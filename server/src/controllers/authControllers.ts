import {Context} from "koa";
import * as authServices from '../services/authService'

const secret = process.env.JWT_SECRET || 'secret';
const jwt = require("jsonwebtoken");

const login = async (ctx:Context) => {
  try {
    console.log(secret)
    const payload = await authServices.login(ctx.request.body)
    ctx.cookies.set("UID", jwt.sign(payload, secret));
    ctx.cookies.set("SameSite", 'None');
    ctx.cookies.set("Secure", "true");
    ctx.status = 200;
    ctx.body = "ok";
  } catch(error) {
    ctx.throw(401, error);
  }
};

const register = async (ctx:Context) => {
  try {
    await authServices.register(ctx.request.body)
    ctx.status = 200;
    ctx.body = "ok";
  } catch (error) {
    ctx.throw(401, error);
  }
};

const verify = (ctx:Context) => {
  ctx.status = 200;
  ctx.body = "ok";
};

module.exports = {
  login,
  register,
  verify,
};
