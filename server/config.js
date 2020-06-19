require("dotenv").config();

const { Pool } = require("pg");
const pool = new Pool({
  user: "postgres",
  host: "localhost",
  database: "orchclub",
  password: "Rozendesu1",
  port: 5432, 
});

module.exports = { pool };
