import axios from "axios";

export default class PostgresStorage {
    private url:string;
    constructor() {
        if (process.env.NODE_ENV === "production") {
            this.url = 'db-service'
        } else {
            this.url = 'localhost:9001';
        }
    }

    private async makeDbRequest(request:string) {
        return await axios.post(`http://${this.url}/db/request`
            , {
                request: request,
                token: 'secret'
            }
        ).then(response => {
            return response.data;
        }).catch((err:Error) => {
            throw err;
        });
    }

    login = async (username:string) => {
        const {rows} = await this.makeDbRequest(`SELECT "Id", "Password" FROM "Users" WHERE "Username" = '${username}'`);
        return rows[0];
    };

    registerUser = async (name:string, hash:string, region:string, city:string, adress:string, phone:number) => {
        await this.makeDbRequest(`INSERT INTO "Users"
                ("Username", "Password", "Type", "Region", "City", "Adress", "Phone") 
                VALUES('${name}', '${hash}', 'User', '${region}', '${city}', '${adress}', '${phone}')`);
    };
}