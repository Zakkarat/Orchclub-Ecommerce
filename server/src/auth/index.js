const passport = require("koa-passport");
const LocalStrategy = require("passport-local").Strategy;
const { pool } = require("../../config");

module.exports = passport;