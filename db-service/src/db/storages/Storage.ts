import PostgresStorage from "./PostgresStorage";


export default class Storage {
    public storage;

    constructor() {
        this.storage = PostgresStorage.build();
    }
}