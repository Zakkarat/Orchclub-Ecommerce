import {IDeliveryInfo} from "./IDeliveryInfo";
import ICartItem from "./ICartItem";
import {ICategory} from "../../../interfaces/IOrchid";
import IOrchid from "../../../interfaces/IOrchid";
import {IOrder} from "./IOrder";

export interface IStorage {
    login:(username:string) => Promise<{ id:number, password:string }>;

    registerUser:(name:string, hash:string, region:string, city:string, adress:string, phone:number) => Promise<void>;

    getCategories:() => Promise<ICategory[]>;

    getOrchid:(queryCondition:string[]) => Promise<IOrchid[]>;

    getOrchids:(category:string) => Promise<IOrchid[]>;

    getUserOrder:(user:number) => Promise<IOrder[]>;

    putOrder:(user:number, deliveryInfo:IDeliveryInfo, overall:string) => Promise<string>

    putItemsInOrder:(orderId:string, cart:ICartItem[]) => Promise<void>;
}
