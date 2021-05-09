import PostgresStorage from "./PostgresStorage";


export default class Storage {
    public storage;

    constructor() {
        this.storage = new PostgresStorage();
    }
}