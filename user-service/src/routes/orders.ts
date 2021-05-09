const Router = require("koa-router");
const orders = Router({ prefix: "/users" });
const checkAuth = require("../middleware/checkAuth");
const ordersControllers = require("../controllers/ordersControllers");

orders.get("/userOrders", checkAuth, ordersControllers.userOrders);
orders.post("/createOrder", checkAuth, ordersControllers.createOrders);

module.exports = orders;
