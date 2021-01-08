import Storage from "./storages/Storage";
import {POSTGRES_INSTANCE} from "../constants/database";

export const {storage} = new Storage(POSTGRES_INSTANCE);



