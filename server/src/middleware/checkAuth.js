const jwt = require("jsonwebtoken");
const secret = process.env.JWT_SECRET || 'secret';

module.exports = async (ctx, next) => {
  try {
    const token = ctx.headers.cookie.split("").splice(4).join("");
    console.log(token)
    let payload = jwt.verify(token, secret);
    console.log(payload);
    ctx.state.user = payload.sub;
    return next();
  } catch (e) {
    return ctx.throw(400, "Invalid token, please log in again");
  }
};
