const Router = require("koa-router");
const orchids = Router();
const { pool } = require("../../config");
const orchidsObj = require("../../orchs.json");

orchids.get("/users", async (ctx) => {
  const { rows } = await pool.query(
    `SELECT "Username", "Password" from "Users"`
  );
  ctx.body = rows;
});

orchids.get("/orchids/putOrchs", async (ctx) => {
  const categories = Object.keys(orchidsObj);
  categories.forEach(async (category, id) =>
    orchidsObj[category].forEach(
      async (orchid) =>{
        await pool.query(
          `INSERT INTO "Orchids"("Name", "Size", "Price", "Stock", "Image", "CategoryId") VALUES('${orchid.text}', '${orchid.size}', '${orchid.price}', '0', '${orchid.image}', '${id+1}')`
        )
      }
    )
  );
});

orchids.get("/orchids/putCategories", (ctx) => {
  const categories = Object.keys(orchidsObj);
  categories.forEach(
    async (category) =>
      await pool.query(`INSERT INTO "Category"("Name") VALUES('${category}')`)
  );
});

module.exports = orchids;
