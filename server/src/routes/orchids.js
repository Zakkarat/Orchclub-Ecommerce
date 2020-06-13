const Router = require("koa-router");
const orchids = Router();
const orchidControllers = require("../controllers/orchidControllers")

orchids.get("/orchids/categories", orchidControllers.categories);
orchids.get("/orchids", orchidControllers.orchids);
orchids.get("/orchid", orchidControllers.orchid);

module.exports = orchids;
