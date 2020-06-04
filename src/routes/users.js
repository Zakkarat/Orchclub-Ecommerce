const Router = require("koa-router");
const users = Router();
const { pool } = require("../../config");

users.get("/users", async (ctx) => {
  const { rows } = await pool.query(
    `SELECT "Username", "Password" from "Users"`
  );
  ctx.body = rows;
});

module.exports = users;
