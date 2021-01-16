import {storage} from "../db/config";
import {ILoginCredentials, IRegisterCredentials} from "../interfaces/ICredentials";
// import jwt from "jsonwebtoken";
// import {Context} from "koa";

const bcrypt = require("bcrypt");
const saltRounds = 10;
// const secret = process.env.JWT_SECRET || 'secret';

export const login = async ({ username, password }:ILoginCredentials):Promise<{sub:string}>|never => {
    if (!username) throw new Error("Username required.");
    if (!password) throw new Error("Password required.");
    const dbUser = await storage.login(username);
    console.log(dbUser);
    if (!dbUser) throw new Error("Incorrect username and/or password.");
    console.log(dbUser)
    if (await bcrypt.compare(password, dbUser.Password)) {
        return {sub: dbUser.Id};
    }
    throw new Error('Something went wrong')
}

export const register = async ({name, password, region, city, adress, phone}:IRegisterCredentials):Promise<void>|never => {
    const salt = await bcrypt.genSalt(saltRounds).catch((err:Error) => {
        throw err;
    });
    const hash = await bcrypt.hash(password, salt);
    await storage
        .registerUser(name, hash, region, city, adress, phone)
        .catch((_:Error) => {
            throw new Error("Wrong data");
        });
}