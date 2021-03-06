import {IDeliveryInfo} from "../../interfaces/IDeliveryInfo";
import ICartItem from "../../interfaces/ICartItem";
import {IStorage} from "../../interfaces/IStorage";
import {Pool} from "pg";

const connectionString = process.env.DATABASE_URL

export default class PostgresStorage implements IStorage {
    private pool:Pool;

    constructor() {
        this.pool = new Pool({
            connectionString: connectionString,
            ssl: { rejectUnauthorized: false }
        });
    }

    login = async (username:string) => {
        const {rows} = await this.pool.query(
            `SELECT "Id", "Password" FROM "Users" WHERE "Username" = '${username}'`
        );
        return rows[0];
    };

    registerUser = async (name:string, hash:string, region:string, city:string, adress:string, phone:number) => {
        await this.pool
            .query(
                `INSERT INTO "Users"
                ("Username", "Password", "Type", "Region", "City", "Adress", "Phone") 
                VALUES('${name}', '${hash}', 'User', '${region}', '${city}', '${adress}', '${phone}')`
            )
            .catch((err:Error) => {
                throw err;
            });
    };

    getCategories = async () => {
        const {rows} = await this.pool.query(`SELECT * FROM "Category"`);
        return rows;
    };

    getOrchid = async (id:string[]) => {
        const queryCondition = id.map((id:string) => `"Orchids"."Id"='${id}'`).join(" or ");
        const {
            rows,
        } = await this.pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Stock", "Orchids"."Size"
      FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE ${queryCondition};`);
        return rows;
    };

    getOrchids = async (category:string) => {
        const {
            rows,
        } = await this.pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Size"
        FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE "Category"."Name" = '${category}';`);
        return rows;
    };

    getUserOrder = async (user:number) => {
        const {rows} = await this.pool.query(
            `SELECT * FROM "Orders" WHERE "UserId"='${user}'`
        );
        return rows;
    };

    putOrder = async (user:number, deliveryInfo:IDeliveryInfo, overall:string) => {
        const result = await this.pool
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

    putItemsInOrder = async (orderId:string, cart:ICartItem[]) => {
        for (let i = 0; i < cart.length; i++) {
            await this.pool
                .query(
                    `INSERT INTO "OrderItems"("OrderId", "ItemId", "Quantity") VALUES('${orderId}', '${cart[i].item}', '${cart[i].quantity}')`
                )
                .catch((err:Error) => console.log(err));
        }
    };

}