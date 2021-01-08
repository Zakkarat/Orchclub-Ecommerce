import {Context} from "koa";
import * as ordersService from "../services/ordersService"

const userOrders = async (ctx:Context) => {
  try {
    ctx.body = await ordersService.userOrders(ctx.state as { user:number });
  } catch (error) {
    throw new Error(error)
  }
};

const createOrders = async (ctx:Context) => {
  try {
  const { user } = ctx.state;
  const { cart, deliveryInfo, overall } = ctx.request.body;
  const parameters = {
    user,
    cart,
    deliveryInfo,
    overall
  }
  await ordersService.createOrders(parameters)
  ctx.status = 200;
  ctx.body = "ok";
  } catch (error) {
  throw new Error(error)
  }
};

module.exports = {
  userOrders,
  createOrders,
};
