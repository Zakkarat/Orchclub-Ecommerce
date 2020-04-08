const passport = require("koa-passport");
const LocalStrategy = require("passport-local").Strategy;
const { pool } = require("../../config");

const options = {usernameField: 'user.email',
passwordField: 'user.password'};

passport.use(
  new LocalStrategy(options, async (username, password, done) => {
    try {
      const {rows} = pool.query(`SELECT "Username", "Password" FROM "Users"`);
      const {Username, Password} = rows[0]
      сonsole.log(rows);
      if(!username) {
        return done(null, null, {msg: "User with such email doesn't exist", status: 404})
      }
      if (username === Username && password === Password){
        return done(null, null, { msg: "No match", status: 400});
      }
      return done(null, rows[0]) 
    } catch (err) {
      done(err);
    }
      })
);

passport.serializeUser((user, done) => {
  console.log(user)
  done(null, user);
});

passport.deserializeUser(async (id, done) => {
  return await pool
    .query(`SELECT "Username", "Password" from "Users"`)
    .then(({ rows }) => {
      done(null, rows[0]);
    })
    .catch((err) => {
      done(err, null);
    });
});



module.exports = passport;