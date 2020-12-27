import {Context} from "koa";

const orchidQueries = require("../db/queries/orchidQueries")

const categories = async (ctx:Context) => {
    ctx.body = await orchidQueries.getCategories();
}

const orchids = async (ctx:Context) => {
    const { category } = ctx.request.query;
    ctx.body = await orchidQueries.getOrchids(category);
}

const orchid = async (ctx:Context) => {
    const { id } = ctx.request.query;
    const queryCondition = id
      .split(",")
      .map((id:string) => `"Orchids"."Id"='${id}'`)
      .join(" or ");
    ctx.body = await orchidQueries.getOrchid(queryCondition);
    if(!ctx.body.length) { 
      ctx.status = 404;
    }
}

module.exports = {
    categories,
    orchids,
    orchid
}