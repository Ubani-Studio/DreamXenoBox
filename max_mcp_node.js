autowatch = 1;

const Max = require("max-api");
const { Server } = require("socket.io");

// Configuration
var PORT = 5010;
const NAMESPACE = "/mcp";

function safe_parse_json(str) {
    try {
        return JSON.parse(str);
    } catch (e) {
        Max.post("error, Invalid JSON: " + e.message);
        Max.post("This is likely because the patcher has too much objects, select some of them and try again");
        return null;
    }
}

// Namespace wiring must be re-applied to every Server instance.
// The old version rebuilt the server on "port" messages without
// re-registering /mcp, which left clients unable to connect.
function setupNamespace(server) {
  server.of(NAMESPACE).on("connection", (socket) => {
    Max.post(`Socket.IO client connected: ${socket.id}`);

    socket.on("command", async (data) => {
      Max.outlet("command", JSON.stringify(data));
    });

    socket.on("request", async (data) => {
      Max.outlet("request", JSON.stringify(data));
    });

    socket.on("port", async (data) => {
      Max.post(`msg ${data}`);
      if (data > 0 && data < 65536) {
        PORT = data;
      }
      await rebuild();
    });

    socket.on("disconnect", () => {
      Max.post(`Socket.IO client disconnected: ${socket.id}`);
    });
  });
}

function makeServer() {
  // Bind IPv4 0.0.0.0 (not the default IPv6 :::PORT, which had a ghost socket),
  // and retry on EADDRINUSE instead of crashing.
  const httpServer = require("http").createServer();
  httpServer.on("error", function (e) {
    if (e && e.code === "EADDRINUSE") {
      Max.post("port " + PORT + " busy, retrying in 1.5s");
      setTimeout(function () { try { httpServer.close(); } catch (_) {} httpServer.listen(PORT, "0.0.0.0"); }, 1500);
    } else { Max.post("server error: " + ((e && e.message) || e)); }
  });
  httpServer.on("listening", function () { Max.outlet("port", "Server listening on port " + PORT); });
  const server = new Server(httpServer, { cors: { origin: "*" } });
  setupNamespace(server);
  httpServer.listen(PORT, "0.0.0.0");
  return server;
}

async function rebuild() {
  await io.close();
  io = makeServer();
  await Max.outlet("port", `Server listening on port ${PORT}`);
}

var io = makeServer();

Max.addHandler("response", async (...msg) => {
  var str = msg.join("");
  var data = safe_parse_json(str);
  await io.of(NAMESPACE).emit("response", data);
});

// NO-OP: the port never changes at runtime. Rebuilding here closed the live
// server and caused the "Server listening" -> feedback -> EADDRINUSE loop.
Max.addHandler("port", async () => {});
