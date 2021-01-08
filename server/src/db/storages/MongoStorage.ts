import {MongoClient} from 'mongodb';
import {IDeliveryInfo} from "../../interfaces/IDeliveryInfo";
import ICartItem from "../../interfaces/ICartItem";
import {IStorage} from "../../interfaces/IStorage";
import IOrchid from "../../interfaces/IOrchid";

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

    getOrchid = async (id:string[]) => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Orchids");
            const orchids = await collection.find().toArray();
            return orchids.filter(elem => id.some(itemId => parseInt(itemId) === elem.Id));
        });
    };
    //
    getOrchids = async (category:string) => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Orchids");
            const filterCategory = await db.collection("Category").findOne({name: category});
            const orchids:IOrchid[] = await collection.find({CategoryId: filterCategory.Id}).toArray();
            return orchids;
        });
    };

    getUserOrder = async (user:number) => {
            return this.pool.then(async (client) => {
                const db = client.db('orchclub-ecommerce');
                const collection = db.collection("Orders");
                return await collection.find({UserId: user}).toArray();
            });
    };

    putOrder = async (user:number, deliveryInfo:IDeliveryInfo, overall:string) => {
        return this.pool.then(async (client) => {
            const db = client.db('orchclub-ecommerce');
            const collection = db.collection("Orders");
            let orderId:string = "";
            await collection.insertOne({
                DeliveryType: deliveryInfo.deliveryType,
                NPDeliveryId: deliveryInfo.NPdepartment ? deliveryInfo.NPdepartment : "0",
                TakeAwayId: deliveryInfo.takeAway ? deliveryInfo.takeAway : "0",
                PaymentMethod: deliveryInfo.paymentDetails,
                PaymentStatus: 'В ожидании оплаты',
                UserId: user,
                Overall: overall
            }, (_:Error, docsInserted) => {
                orderId = docsInserted.insertedId;
            });
            return orderId;
        });
    };

    putItemsInOrder = async (orderId:string, cart:ICartItem[]) => {
        for (let i = 0; i < cart.length; i++) {
            this.pool.then(async (client) => {
                const db = client.db('orchclub-ecommerce');
                const collection = db.collection("OrderItems");
                await collection.insertOne({
                    OrderId: orderId,
                    ItemId: cart[i].item,
                    Quantity: cart[i].quantity
                });
            });
        }
    };

}