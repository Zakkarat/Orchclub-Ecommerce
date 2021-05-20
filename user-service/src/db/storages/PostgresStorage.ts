import {IDeliveryInfo} from "../../interfaces/IDeliveryInfo";
import ICartItem from "../../interfaces/ICartItem";
import axios from "axios";


export default class PostgresStorage{
    private url:string;
    constructor() {
        if (process.env.NODE_ENV === "production") {
            this.url = 'db-service'
        } else {
            this.url = 'localhost:9001';
        }
    }

    private async makeDbRequest(request:string) {
        return await axios.post(`http://${this.url}/db/request`
            , {
                request: request,
                token: 'secret'
            }
        ).then(response => {
            console.log(response);
            return response.data;
        }).catch((err:Error) => {
            console.log(err);
            throw err;
        });
    }

    getUserOrder = async (user:number) => {
        const {rows} = await this.makeDbRequest(
            `SELECT * FROM "Orders" WHERE "UserId"='${user}'`
        );
        return rows;
    };

    getUser = async (userId:number) => {
        const {rows} = await this.makeDbRequest(
            `SELECT * FROM "Users" WHERE "Id"='${userId}'`
        );
        return rows;
    }

    putOrder = async (user:number, deliveryInfo:IDeliveryInfo, overall:string) => {
        const result = await this.makeDbRequest(
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

    putItemsInOrder = async (orderId:string, cart:ICartItem[]) => {
        for (let i = 0; i < cart.length; i++) {
            await this.makeDbRequest(
                    `INSERT INTO "OrderItems"("OrderId", "ItemId", "Quantity") VALUES('${orderId}', '${cart[i].item}', '${cart[i].quantity}')`
                )
                .catch((err:Error) => console.log(err));
        }
    };

}