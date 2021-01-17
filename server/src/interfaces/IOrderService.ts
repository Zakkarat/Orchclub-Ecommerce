import {IDeliveryInfo} from "./IDeliveryInfo";
import ICartItem from "./ICartItem";

export interface IOrderService {
    user:number,
    cart:ICartItem[],
    deliveryInfo:IDeliveryInfo,
    overall:string
}