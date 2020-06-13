const Router = require("koa-router");
const orchids = Router();
const orchidQueries = require("../db/queries/orchidQueries")

orchids.get("/orchids/categories", async (ctx) => {
  ctx.body = await orchidQueries.getCategories();
});

orchids.get("/orchids", async (ctx) => {
  const { category } = ctx.request.query;
  ctx.body = await orchidQueries.getOrchids(category);
});

orchids.get("/orchid", async (ctx) => {
  const { id } = ctx.request.query;
  const queryCondition = id
    .split(",")
    .map((id) => `"Orchids"."Id"='${id}'`)
    .join(" or ");
  ctx.body = await orchidQueries.getOrchid(queryCondition);
  if(!ctx.body.length) { 
    ctx.status = 404;
  }
});

module.exports = orchids;
