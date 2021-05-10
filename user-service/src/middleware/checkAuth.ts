import {Context, Next} from "koa";
import getJWT from "../helpers/getJWT";

const jwt = require("jsonwebtoken");
let secret:string = '';
getJWT().then((secretJWT => secret = secretJWT));

module.exports = async (ctx:Context, next:Next) => {
  try {
    const token = ctx.headers.cookie && ctx.headers.cookie.split(";").filter((elem:string) => elem[0] === 'U' || elem[1] === 'U')[0].split('=')[1];
    let payload = jwt.verify(token, secret);
    ctx.state.user = payload.sub;
    return next();
  } catch (e) {
    return ctx.throw(400, "Invalid token, please log in again");
  }
};
