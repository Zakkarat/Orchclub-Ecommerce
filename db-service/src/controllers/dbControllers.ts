import {Context} from "koa";
import * as dbService from  "../services/dbService"

const secret = process.env.JWT_SECRET || 'secret';

export const makeRequest = async (ctx:Context) => {
    try {
        console.log(secret)
        const {token, request} = ctx.request.body;
        if (token !== secret) {
            throw new Error('Wrong DB token');
        }
        console.log(request);
        const payload = await dbService.makeRequest(request);
        ctx.status = 200;
        ctx.body = JSON.stringify(payload);
    } catch(error) {
        ctx.throw(401, error);
    }
};
