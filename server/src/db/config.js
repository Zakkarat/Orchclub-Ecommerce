require("dotenv").config();

const { Pool } = require("pg");
const isProduction = process.env.NODE_ENV === "production";

const connectionString = `
postgres://uxbuvhokbbocan:826a1d23fbb6b89baadb9e23d44d3f408b7ab17c513ce2b6cf1e2d5cae1bd1a8@ec2-54-246-90-10.eu-west-1.compute.amazonaws.com:5432/dbit7n0ojntpd7?ssl=true`;

const pool = new Pool({
  connectionString: isProduction ? process.env.DATABASE_URL : connectionString,
});


module.exports = { pool };
