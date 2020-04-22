const jwt = require("jsonwebtoken");
const secret = process.env.JWT_SECRET || "secret";
const { pool } = require("../../config");

module.exports = async (ctx, next) => {
  try {
    const token = ctx.headers.cookie.split('').splice(4).join('');
    let payload;
      payload = jwt.verify(token, secret);
      ctx.state.user = payload.sub;
      return next();
    } catch (e) {
        return ctx.throw(400, 'Invalid token, please log in again');
    }
  }