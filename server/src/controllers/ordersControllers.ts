import {Context} from "koa";
import * as ordersService from "../services/ordersService"

const userOrders = async (ctx:Context) => {
  ctx.body = ordersService.userOrders(ctx.state as {user:number});
};

const createOrders = async (ctx:Context) => {
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
};

module.exports = {
  userOrders,
  createOrders,
};
