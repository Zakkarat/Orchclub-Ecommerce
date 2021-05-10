require('dotenv').config();
const koa = require("koa");
const bodyParser = require("koa-bodyparser");
const session = require("koa-session");
const json = require("koa-json");
const cors = require("kcors");
const port = process.env.PORT || 9002;

const orchidsRoutes = require("./routes/orchids");

const app = new koa();
app.use(cors({ credentials: true }));
app.use(bodyParser());
app.use(session(app));

app.use(json({ pretty: true, spaces: 4 }));

app.use(orchidsRoutes.routes());

const server = app.listen(port, () => {
  console.log(`Server listening on port: ${port}`);
});

module.exports = server;