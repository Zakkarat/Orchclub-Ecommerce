import {Context} from "koa";
import {storage} from "../db/config";

const bcrypt = require("bcrypt");
const saltRounds = 10;
const secret = process.env.JWT_SECRET;
const jwt = require("jsonwebtoken");

const login = async (ctx:Context) => {
  const { username, password } = ctx.request.body;
  if (!username) ctx.throw(422, "Username required.");
  if (!password) ctx.throw(422, "Password required.");
  const dbUser = await storage.login(username);
  if (!dbUser) ctx.throw(401, "Incorrect username and/or password.");

  // @ts-ignore
  if (await bcrypt.compare(password, dbUser.Password)) {
    // @ts-ignore
    const payload = { sub: dbUser.Id };

    ctx.cookies.set("UID", jwt.sign(payload, secret));
    ctx.cookies.set("SameSite", 'None');
    ctx.cookies.set("Secure", "true");
    ctx.status = 200;
    ctx.body = "ok";
  } else {
    ctx.throw(401, "Incorrect username and/or password.");
  }
};

const register = async (ctx:Context) => {
  const { name, password, region, city, adress, phone } = ctx.request.body;
  const salt = await bcrypt.genSalt(saltRounds).catch((err:Error) => {
    throw err;
  });
  const hash = await bcrypt.hash(password, salt);
  await storage
    .registerUser(name, hash, region, city, adress, phone)
    .catch((err:Error) => {
      console.log(err);
      ctx.throw(401, "Wrong data");
    });
  ctx.status = 200;
  ctx.body = "ok";
};

const verify = (ctx:Context) => {
  ctx.status = 200;
  ctx.body = "ok";
};

module.exports = {
  login,
  register,
  verify,
};
