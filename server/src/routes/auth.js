const Router = require("koa-router");
const auth = Router();
const { pool } = require("../../config");
const jwt = require("jsonwebtoken");

const bcrypt = require("bcrypt");
const saltRounds = 10;
const secret = process.env.JWT_SECRET || "secret";
const wrongUserPassMsg = "Incorrect username and/or password.";
const checkAuth = require('../middleware/checkAuth')

auth.post("/auth/login", async (ctx, next) => {
  const { username, password } = ctx.request.body;
  console.log(ctx.request.body);
  if (!username) ctx.throw(422, "Username required.");
  if (!password) ctx.throw(422, "Password required.");

  const { rows } = await pool.query(
    `SELECT "Id", "Password" FROM "Users" WHERE "Username" = '${username}'`
  );

  const dbUser = rows[0];
  if (!dbUser) ctx.throw(401, wrongUserPassMsg);

  if (await bcrypt.compare(password, dbUser.Password)) {
    const payload = { sub: dbUser.Id };
    const token = jwt.sign(payload, secret);

    ctx.cookies.set("UID", token);
    ctx.body = "ok";
  } else {
    ctx.throw(401, wrongUserPassMsg);
  }
});

auth.post("/auth/register", async (ctx, next) => {
  const { username, password, country, city, adress, phone } = ctx.request.body;
  try {
    bcrypt
      .genSalt(saltRounds, (err, salt) => {
        bcrypt.hash(password, salt, async (err, hash) => {
          await pool
            .query(
              `INSERT INTO "Users"("Username", "Password", "Type", "Country", "City", "Adress", "Phone") VALUES('${username}', '${hash}', 'User', '${country}', '${city}', '${adress}', '${phone}')`
            )
            .catch((err) => console.log(err));
        });
      })
      .catch((err) => console.log(err));
  } catch {
    ctx.throw(401, "Wrong data");
  }
});

auth.get("/auth/verify", checkAuth, (ctx) => {
  ctx.status = 200;
})

module.exports = auth;
