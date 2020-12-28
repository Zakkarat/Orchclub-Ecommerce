import {MongoClient} from 'mongodb';
import {IDeliveryInfo} from "../../interfaces/IDeliveryInfo";
import ICartItem from "../../interfaces/ICartItem";
import {IStorage} from "../../interfaces/IStorage";
// import {IOrder} fxrom "../../interfaces/IOrder";

export default class MongoStorage implements IStorage{
    private readonly pool;

    constructor() {
        this.pool = new MongoClient("mongodb+srv://zakkarat:rozendesu@cluster0.6xuc1.mongodb.net/test?authSource=admin&replicaSet=atlas-xbuzh1-shard-0&readPreference=primary&appname=MongoDB%20Compass&ssl=true").connect();
    }

    login = async (username:string) => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Users");
            return await collection.findOne({Username: username});
        });
    };

    registerUser = async (name:string, hash:string, region:string, city:string, adress:string, phone:number) => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Users");
            await collection.insertOne({
                Username: name,
                Password: hash,
                Type: "User",
                Region: region,
                City: city,
                Adress: adress,
                Phone: phone
            });
        });
    };

    getCategories = async () => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Category");
            return await collection.find().toArray();
        });
    };

    // @ts-ignore
    getOrchid = async (queryCondition:string) => {
        return queryCondition
        //   const {
        //       rows,
        //   } = await pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Stock", "Orchids"."Size"
        // FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE ${queryCondition};`);
        //   return rows;
    };
    //
    // @ts-ignore
    getOrchids = async (category:string) => {
        return category
        // const {
        //     rows,
        // } = await pool.query(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Size"
        // FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE "Category"."Name" = '${category}';`);
        // return rows;
    };

    getUserOrder = async (user:number) => {
            return this.pool.then(async (client) => {
                const db = client.db('orchclub-ecommerce');
                const collection = db.collection("Orders");
                return await collection.find({UserId: user}).toArray();
            });
    };

    // @ts-ignore
    putOrder = async (user:number, deliveryInfo:IDeliveryInfo, overall:string) => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Orders");
            await collection.insertOne({
                DeliveryType: deliveryInfo.deliveryType,
                NPDeliveryId: deliveryInfo.NPdepartment ? deliveryInfo.NPdepartment : "0",
                TakeAwayId: deliveryInfo.takeAway ? deliveryInfo.takeAway : "0",
                PaymentMethod: deliveryInfo.paymentDetails,
                PaymentStatus: 'В ожидании оплаты',
                UserId: user,
                Overall: overall
            }, (_:Error, docsInserted) => {
                console.log(docsInserted);
            });
        });
    };

    putItemsInOrder = async (orderId:number, cart:ICartItem[]) => {
        for (let i = 0; i < cart.length; i++) {
            this.pool.then(async (client) => {
                const db = client.db('orchclub-ecommerce');
                const collection = db.collection("OrderItems");
                await collection.findOne({
                    OrderId: orderId,
                    ItemId: cart[i].item,
                    Quantity: cart[i].quantity
                });
            });
        }
    };

}