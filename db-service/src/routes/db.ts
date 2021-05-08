import Router = require("koa-router");
import * as dbControllers from '../controllers/dbControllers'
const db = new Router({ prefix: "/db" });

db.post("/request", dbControllers.makeRequest);

module.exports = db;
