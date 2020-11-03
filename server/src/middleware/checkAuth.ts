import {Context, Next} from "koa";

const jwt = require("jsonwebtoken");
const secret = process.env.JWT_SECRET || 'secret';

module.exports = async (ctx:Context, next:Next) => {
  try {
    const token = ctx.headers.cookie.split("=")[3]
    let payload = jwt.verify(token, secret);
    ctx.state.user = payload.sub;
    return next();
  } catch (e) {
    return ctx.throw(400, "Invalid token, please log in again");
  }
};
