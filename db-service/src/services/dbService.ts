import {storage} from "../db/config";

export const makeRequest = async (request:string) => {
    return await storage.makeRequest(request);
}
