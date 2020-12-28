import {pool} from "../config";
import {IDeliveryInfo} from "../../interfaces/IDeliveryInfo";
import ICartItem from "../../interfaces/ICartItem";

const getUserOrder = async (user:string) => {
  const { rows } = await pool.query(
    `SELECT * FROM "Orders" WHERE "UserId"='${user}'`
  );
  return rows;
};

const putOrder = async (user:string, deliveryInfo:IDeliveryInfo, overall:string) => {
  const result = await pool
    .query(
      `INSERT INTO "Orders"("DeliveryType", "TakeAwayId", "NPDeliveryId", "PaymentMethod", "PaymentStatus", "UserId", "Overall") VALUES('${
        deliveryInfo.deliveryType
      }', '${deliveryInfo.takeAway ? deliveryInfo.takeAway : "0"}', '${
        deliveryInfo.NPdepartment ? deliveryInfo.NPdepartment : "0"
      }', '${
        deliveryInfo.paymentDetails
      }', 'В ожидании оплаты', '${user}', '${overall}') RETURNING "Id"`
    );
  return result.rows[0].Id;
};

const putItemsInOrder = async (orderId:number, cart:ICartItem[]) => {
  for (let i = 0; i < cart.length; i++) {
    await pool
      .query(
        `INSERT INTO "OrderItems"("OrderId", "ItemId", "Quantity") VALUES('${orderId}', '${cart[i].item}', '${cart[i].quantity}')`
      )
      .catch((err:Error) => console.log(err));
  }
};

module.exports = {
  getUserOrder,
  putOrder,
  putItemsInOrder,
};
