const Router = require("koa-router");
const orders = Router();
const { pool } = require("../../config");
const checkAuth = require("../middleware/checkAuth");

orders.get("/orders/userOrders", checkAuth, async (ctx) => {
  const { user } = ctx.state;
  const { rows } = await pool.query(
    `SELECT * FROM "Orders" WHERE "UserId"='${user}'`
  );
  ctx.body = rows;
});

orders.post("/orders/createOrder", checkAuth, async (ctx) => {
  const { user } = ctx.state;
  const { cart, deliveryInfo, overall } = ctx.request.body;
  console.log(
    `INSERT INTO "Orders"("DeliveryType", "TakeAwayId", "NPDeliveryId", "PaymentMethod", "PaymentStatus", "UserId", "Overall") VALUES('${
      deliveryInfo.deliveryType
    }', '${deliveryInfo.takeAway ? deliveryInfo.takeAway : "0"}', '${
      deliveryInfo.NPdepartment ? deliveryInfo.NPdepartment : "0"
    }', '${
      deliveryInfo.paymentDetails
    }', 'В ожидании оплаты', '${user}', '${overall}')`
  );
  const { rows } = await pool
    .query(
      `INSERT INTO "Orders"("DeliveryType", "TakeAwayId", "NPDeliveryId", "PaymentMethod", "PaymentStatus", "UserId", "Overall") VALUES('${
        deliveryInfo.deliveryType
      }', '${deliveryInfo.takeAway ? deliveryInfo.takeAway : "0"}', '${
        deliveryInfo.NPdepartment ? deliveryInfo.NPdepartment : "0"
      }', '${
        deliveryInfo.paymentDetails
      }', 'В ожидании оплаты', '${user}', '${overall}') RETURNING "Id"`
    )
    .catch((err) => console.log(err));
  const orderId = rows[0].Id;
  for (let i = 0; i < cart.length; i++) {
    await pool
      .query(
        `INSERT INTO "OrderItems"("OrderId", "ItemId", "Quantity") VALUES('${orderId}', '${cart[i].item}', '${cart[i].quantity}')`
      )
      .catch((err) => console.log(err));
  }
});

module.exports = orders;
