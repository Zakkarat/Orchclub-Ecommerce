const koa = require("koa");
const bodyParser = require("koa-bodyparser");
const session = require("koa-session");
const { Pool } = require("./config");
const json = require("koa-json");
const cors = require("kcors");
const port = process.env.PORT || 9000;

const usersRoutes = require("./src/routes/users.js");
const authRoutes = require("./src/routes/auth.js");
const orchidsRoutes = require("./src/routes/orchids.js");
const ordersRoutes = require("./src/routes/orders.js");

const app = new koa();
app.use(cors({ credentials: true }));
app.use(bodyParser());
app.use(session(app));

app.use(json({ pretty: true, spaces: 4 }));

app.pool = Pool;
app.use(usersRoutes.routes());
app.use(authRoutes.routes());
app.use(orchidsRoutes.routes());
app.use(ordersRoutes.routes());

const server = app.listen(port, () => {
  console.log(`Server listening on port: ${port}`);
});

module.exports = server;
