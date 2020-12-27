require("dotenv").config();

const pg = require("pg");
const pool = new pg.Pool({
  user: "postgres",
  host: "localhost",
  database: "orchclub",
  password: "Rozendesu1",
  port: 5432, 
});

module.exports = { pool };
