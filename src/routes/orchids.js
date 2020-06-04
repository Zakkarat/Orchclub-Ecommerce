const Router = require("koa-router");
const orchids = Router();
const { pool } = require("../../config");

orchids.get("/orchids/categories", async (ctx) => {
  const { rows } = await pool.query(`SELECT * FROM "Category"`);
  ctx.body = rows;
});

orchids.get("/orchids", async (ctx) => {
  const { category } = ctx.request.query;
  const {
    rows,
  } = await pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Size"
    FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE "Category"."Name" = '${category}';`);
  ctx.body = rows;
});

orchids.get("/orchid", async (ctx) => {
  const { id } = ctx.request.query;
  const queryCondition = id
    .split(",")
    .map((id) => `"Orchids"."Id"='${id}'`)
    .join(" or ");
  const {
    rows,
  } = await pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Stock", "Orchids"."Size"
  FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE ${queryCondition};`);
  ctx.body = rows;
  if(!rows.length) { 
    ctx.status = 404;
  }
});

module.exports = orchids;
