import {Pool} from "pg";

const connectionString = process.env.DATABASE_URL

export default class PostgresStorage {
    private pool:Pool;

    constructor() {
        console.log(process.env);
        if (process.env.NODE_ENV !== "production") {
            this.pool = new Pool({
                connectionString: connectionString,
            });
        } else {
            this.pool = new Pool({
                connectionString: `postgres://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.POSTGRES_SERVICE_HOST}:5432/${process.env.DB_NAME}`,
            });
        }
    }

    makeRequest = async (request: string) => {
        return await this.pool.query(request)
            .catch((err:Error) => {
                console.log(err);
                throw err;
            });
    }
}