const koa = require('koa');
const bodyParser = require('koa-bodyparser');
const session = require('koa-session');
const passport = require('koa-passport');
const { Pool } = require('./config');
const jwt = require('jsonwebtoken');
const cors = require('cors');
const port = process.env.PORT || 9000;

const usersRoutes = require('./src/routes/users.js');
const authRoutes = require('./src/routes/auth.js');

const app = new koa();

app.use(session(app));
app.use(bodyParser());

app.keys = ['secret key'];
require('./src/auth/');
app.use(passport.initialize());
app.use(passport.session());
app.pool = Pool;
app.use(usersRoutes.routes());
app.use(authRoutes.routes());


const server = app.listen(port, () => {
    console.log(`Server listening on port: ${port}`);
  });
  
  module.exports = server;