import {Pool} from "pg";
import {vault} from "../config";


export default class PostgresStorage {
    private pool:Pool | undefined;

    static build() {
        const self = new PostgresStorage();
        if (process.env.NODE_ENV === "production") {
            vault.then(async (vault) => {
                const data = await vault.getSecret();
                self.pool = new Pool({
                    connectionString: data.DATABASE_URL,
                });
                console.log(self.pool);
            });
        } else {
            self.pool = new Pool({
                connectionString: `postgres://${process.env.DB_USER}:${process.env.DB_PASSWORD}@${process.env.POSTGRES_SERVICE_HOST}:5432/${process.env.DB_NAME}`,
            });
        }
        return self;
    }

    makeRequest = async (request: string) => {
        return this.pool ? await this.pool.query(request)
            .catch((err:Error) => {
                console.log(err);
                throw err;
            }) : '';
    }
}