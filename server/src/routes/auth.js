const Router = require("koa-router");
const auth = Router({ prefix: "/auth" });

const authControllers = require("../controllers/authControllers");
const checkAuth = require("../middleware/checkAuth");

auth.post("/login", authControllers.login);
auth.post("/register", authControllers.register);
auth.get("/verify", checkAuth, authControllers.verify);

module.exports = auth;
