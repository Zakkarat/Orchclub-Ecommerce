import {storage} from "../db/config";
import {IOrderService} from "../interfaces/IOrderService";

export const userOrders = async ({ user }:{ user:number }) => {
    return await storage.getUserOrder(user);
};

export const createOrders = async ({ user, cart, deliveryInfo, overall }:IOrderService) => {
    const orderId = await storage.putOrder(user, deliveryInfo, overall);
    await storage.putItemsInOrder(orderId, cart);
};
