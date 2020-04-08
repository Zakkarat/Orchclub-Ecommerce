const Router = require("koa-router");
const auth = Router();
const { pool } = require("../../config");
const passport = require('../auth');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt');

const secret = process.env.JWT_SECRET || 'secret';
const wrongUserPassMsg = 'Incorrect username and/or password.';
// auth.post("/auth/login", async (ctx, next) => {
//   console.log(ctx);
//     await passport.authenticate('local', (err, user, info) => {
//         console.log(user, err, info)
//         if(err) {
//             ctx.throw(err);
//         }
//         if (!user) {
//             ctx.throw(info.status || 400, info.msg || "Invalid credentials")
//         }
//         ctx.redirect('/auth/status')
//       })(ctx, next);
// });

auth.post('/auth/login', async (ctx, next) => {
  const { username, password } = ctx.request.body;

  if (!username) ctx.throw(422, 'Username required.');
  if (!password) ctx.throw(422, 'Password required.');

  const {rows} = await pool.query(`SELECT "Id", "Password" FROM "Users" WHERE "Username" = '${username}'`);
  const dbUser = rows[0];
  if (!dbUser) ctx.throw(401, wrongUserPassMsg);

  if (password === dbUser.Password) {
    const payload = { sub: dbUser.Id };
    const token = jwt.sign(payload, secret);

    ctx.body = token;
  } else {
    ctx.throw(401, wrongUserPassMsg);
  }
})

auth.get('/auth/status', async (ctx) => {
    if (ctx.isAuthenticated()) {
      ctx.body = 'Success!'
    } else {
        console.log('no log');
      ctx.redirect('/auth/login');
    }
  });

module.exports = auth;
