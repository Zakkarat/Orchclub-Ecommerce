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
        console.log(this.url);
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

    getCategories = async () => {
        const {rows} = await this.makeDbRequest(`SELECT * FROM "Category"`);
        return rows;
    };

    getOrchid = async (id:string[]) => {
        const queryCondition = id.map((id:string) => `"Orchids"."Id"='${id}'`).join(" or ");
        const {
            rows,
        } = await this.makeDbRequest(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Stock", "Orchids"."Size"
      FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE ${queryCondition};`);
        return rows;
    };

    getOrchids = async (category:string) => {
        const {
            rows,
        } = await this.makeDbRequest(`SELECT "Orchids"."Id", "Orchids"."Name", "Orchids"."Image", "Orchids"."Price", "Orchids"."Size"
        FROM public."Orchids" INNER JOIN "Category" ON "Orchids"."CategoryId" = "Category"."Id" WHERE "Category"."Name" = '${category}';`);
        return rows;
    };
}