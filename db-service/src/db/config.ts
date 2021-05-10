import Storage from "./storages/Storage";
import {Vault} from "../vault/Vault";

export const vault = Vault.build();
export const {storage} = new Storage();
