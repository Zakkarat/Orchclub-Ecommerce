import {Context} from "koa";

const ordersQueries = require("../db/queries/ordersQueries");

const userOrders = async (ctx:Context) => {
  const { user } = ctx.state;
  ctx.body = await ordersQueries.getUserOrder(user);
};

const createOrders = async (ctx:Context) => {
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
