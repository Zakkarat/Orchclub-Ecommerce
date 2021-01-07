import {Context} from "koa";
import * as orchidService from '../services/orchidService'

const categories = async (ctx:Context) => {
    try {
        ctx.body = await orchidService.categories();
    } catch (error) {
        ctx.throw(500, error);
    }
}

const orchids = async (ctx:Context) => {
    try {
        ctx.body = await orchidService.orchids(ctx.request.query);
    } catch (error) {
        ctx.throw(500, error)
    }
}

const orchid = async (ctx:Context) => {
    try {
        ctx.body = await orchidService.orchid(ctx.request.query);
        if (!ctx.body.length) {
            ctx.throw(404, "Not found")
        }
    } catch (error) {
        ctx.throw(500, error)
    }
}

module.exports = {
    categories,
    orchids,
    orchid
}