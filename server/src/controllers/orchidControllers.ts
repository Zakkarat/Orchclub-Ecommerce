import {Context} from "koa";
import {storage} from "../db/config";

const categories = async (ctx:Context) => {
    ctx.body = await storage.getCategories();
}

const orchids = async (ctx:Context) => {
    const { category } = ctx.request.query;
    ctx.body = await storage.getOrchids(category);
}

const orchid = async (ctx:Context) => {
    const query = ctx.request.query;
    const queryCondition = query.id
      .split(",")
    ctx.body = await storage.getOrchid(queryCondition);
    if(!ctx.body.length) { 
      ctx.status = 404;
    }
}

module.exports = {
    categories,
    orchids,
    orchid
}