const Router = require("koa-router");
const auth = Router();
const authQueries = require("../db/queries/authQueries")
const jwt = require("jsonwebtoken");

const bcrypt = require("bcrypt");
const saltRounds = 10;
const secret = process.env.JWT_SECRET;
const wrongUserPassMsg = "Incorrect username and/or password.";
const checkAuth = require("../middleware/checkAuth");

auth.post("/auth/login", async (ctx) => {
  const { username, password } = ctx.request.body;
  if (!username) ctx.throw(422, "Username required.");
  if (!password) ctx.throw(422, "Password required.");
  console.log(ctx.request.body)
  const dbUser = await authQueries.login(username);
  if (!dbUser) ctx.throw(401, wrongUserPassMsg);

  if (await bcrypt.compare(password, dbUser.Password)) {
    const payload = { sub: dbUser.Id };
    const token = jwt.sign(payload, secret);

    ctx.cookies.set("UID", token);
    ctx.status = 200;
    ctx.body = "ok";
  } else {
    ctx.throw(401, wrongUserPassMsg);
  }
});

auth.post("/auth/register", async (ctx) => {
  const { name, password, region, city, adress, phone } = ctx.request.body;
  try {
    bcrypt
      .genSalt(saltRounds, (err, salt) => {
        bcrypt.hash(password, salt, async (err, hash) => {
          await authQueries.register(name, hash, region, city, adress, phone)
        });
      })
      .catch((err) => console.log(err));
  } catch {
    ctx.throw(401, "Wrong data");
  }
  ctx.status = 200;
  ctx.body = "ok";
});

auth.get("/auth/verify", checkAuth, (ctx) => {
  ctx.status = 200;
});

module.exports = auth;
