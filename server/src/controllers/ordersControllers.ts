import {Context} from "koa";
import {storage} from "../db/config";


const userOrders = async (ctx:Context) => {
  const { user } = ctx.state;
  console.log(await storage.getUserOrder(user));
  ctx.body = await storage.getUserOrder(user);
};

const createOrders = async (ctx:Context) => {
  const { user } = ctx.state;
  const { cart, deliveryInfo, overall } = ctx.request.body;
  const orderId = await storage.putOrder(user, deliveryInfo, overall);
  // @ts-ignore
  await storage.putItemsInOrder(orderId, cart);
  ctx.status = 200;
  ctx.body = "ok";
};

module.exports = {
  userOrders,
  createOrders,
};
