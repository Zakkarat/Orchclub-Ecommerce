const { pool } = require("../config");

const getCategories = async () => {
  const { rows } = await pool.query(`SELECT * FROM "Category"`);
  return rows;
};

const getOrchid = async (queryCondition) => {
  const {
    rows,
  } = await pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Stock", "Orchids"."Size"
      FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE ${queryCondition};`);
  return rows;
};

const getOrchids = async (category) => {
  const {
    rows,
  } = await pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Size"
        FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE "Category"."Name" = '${category}';`);
  return rows;
};

module.exports = {
  getCategories,
  getOrchid,
  getOrchids,
};
