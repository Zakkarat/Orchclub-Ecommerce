require('dotenv').config()

const { Pool } = require('pg')
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'orchclub',
  password: 'Rozendesu1', // Password is empty be default
  port: 5432, // Default port
});

module.exports = { pool }