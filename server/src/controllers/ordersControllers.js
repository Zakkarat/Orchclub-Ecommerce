const ordersQueries = require("../db/queries/ordersQueries");

const userOrders = async (ctx) => {
  const { user } = ctx.state;
  ctx.body = ordersQueries.getUserOrder(user);
};

const createOrders = async (ctx) => {
  const { user } = ctx.state;
  const { cart, deliveryInfo, overall } = ctx.request.body;
  const orderId = await ordersQueries.putOrder(user, deliveryInfo, overall);
  await ordersQueries.putItemsInOrder(orderId, cart);
  ctx.status = 200;
  ctx.body = "ok";
};

module.exports = {
  userOrders,
  createOrders,
};
