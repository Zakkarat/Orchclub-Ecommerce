const Router = require("koa-router");
const orders = Router();
const { pool } = require("../db/config");
const checkAuth = require("../middleware/checkAuth");
const ordersQueries = require("../db/queries/ordersQueries");

orders.get("/orders/userOrders", checkAuth, async (ctx) => {
  const { user } = ctx.state;
  ctx.body = ordersQueries.getUserOrder(user);
});

orders.post("/orders/createOrder", checkAuth, async (ctx) => {
  const { user } = ctx.state;
  const { cart, deliveryInfo, overall } = ctx.request.body;
  const orderId = await ordersQuery.putOrder(user, deliveryInfo, overall);
  await ordersQueries.putItemsInOrder(orderId, cart);
});

module.exports = orders;
