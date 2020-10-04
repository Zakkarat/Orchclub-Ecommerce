const { pool } = require("../config");

const getUserOrder = async (user) => {
  const { rows } = await pool.query(
    `SELECT * FROM "Orders" WHERE "UserId"='${user}'`
  );
  return rows;
};

const putOrder = async (user, deliveryInfo, overall) => {
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
  return rows[0].Id;
};

const putItemsInOrder = async (orderId, cart) => {
  for (let i = 0; i < cart.length; i++) {
    await pool
      .query(
        `INSERT INTO "OrderItems"("OrderId", "ItemId", "Quantity") VALUES('${orderId}', '${cart[i].item}', '${cart[i].quantity}')`
      )
      .catch((err) => console.log(err));
  }
};

module.exports = {
  getUserOrder,
  putOrder,
  putItemsInOrder,
};
