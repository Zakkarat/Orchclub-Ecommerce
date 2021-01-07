import {storage} from "../db/config";

export const categories = async () => {
    return await storage.getCategories();
}

export const orchids = async ({ category }:{ category:string }) => {
    return await storage.getOrchids(category);
}

export const orchid = async ({ id }:{ id:string }) => {
    const queryCondition = id
        .split(",")
    return await storage.getOrchid(queryCondition);
}
