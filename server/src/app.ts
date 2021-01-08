require('dotenv').config();
const koa = require("koa");
const bodyParser = require("koa-bodyparser");
const session = require("koa-session");
const json = require("koa-json");
const cors = require("kcors");
const port = process.env.PORT || 9000;

const authRoutes = require("./routes/auth");
const orchidsRoutes = require("./routes/orchids");
const ordersRoutes = require("./routes/orders");

const app = new koa();
app.use(cors({ credentials: true }));
app.use(bodyParser());
app.use(session(app));
app.use(json({ pretty: true, spaces: 4 }));

app.use(authRoutes.routes());
app.use(orchidsRoutes.routes());
app.use(ordersRoutes.routes());

const server = app.listen(port, () => {
  console.log(`Server listening on port: ${port}`);
});

module.exports = server;
