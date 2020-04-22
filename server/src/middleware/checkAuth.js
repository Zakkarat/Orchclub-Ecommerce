const jwt = require("jsonwebtoken");
const secret = process.env.JWT_SECRET || "secret";
const { pool } = require("../../config");

module.exports = async (ctx, next) => {
  try {
    const token = ctx.headers.cookie.split('').splice(4).join('');
    let payload;
      payload = jwt.verify(token, secret);
      const {rows} = await pool.query(`SELECT * from "Users" WHERE "Id"='${payload.sub}'`)
      ctx.state.user = rows[0];
      return next();
    } catch (e) {
        return ctx.throw(400, 'Invalid token, please log in again');
    }
  }