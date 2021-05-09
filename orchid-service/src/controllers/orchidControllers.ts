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
        const query = ctx.request.query as {category:string};
        ctx.body = await orchidService.orchids(query);
    } catch (error) {
        ctx.throw(500, error)
    }
}

const orchid = async (ctx:Context) => {
    try {
        const query = ctx.request.query as {id:string};
        ctx.body = await orchidService.orchid(query);
        if (!(ctx.body as any[]).length) {
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