const jwt = require("jsonwebtoken");
const secret = process.env.JWT_SECRET;

module.exports = async (ctx, next) => {
  try {
    console.log(ctx.headers.cookie.split(";"))
    const token = ctx.headers.cookie.split(";").filter(elem => elem[0] === 'U' || elem[1] === 'U')[0].split('=')[1]
    console.log(token)
    let payload = jwt.verify(token, secret);
    ctx.state.user = payload.sub;
    return next();
  } catch (e) {
    return ctx.throw(400, "Invalid token, please log in again");
  }
};
