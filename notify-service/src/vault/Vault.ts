import * as fs from "fs";
import fetch from 'node-fetch';

export class Vault {
    private clientToken:string = '';
    public static async build():Promise<Vault> {
        let clientToken;
        if (process.env.JWT_PATH) {
            const path:string = process.env.JWT_PATH;
            const token = fs.readFileSync(path, 'utf-8');
            const body = {role: 'webapp', jwt: token}
            clientToken = await fetch(`${process.env.VAULT_ADDR}/v1/auth/kubernetes/login`, {
                    method: 'put',
                    body: JSON.stringify(body),
                    headers: {'Content-Type': 'application/json'},
                }
            ).then(async (resp) => {
                const body = await resp.json();
                console.log(body);
                return body.auth.client_token;
            });
        }
        const self = new Vault();
        self.clientToken = clientToken;
        return self;
    }

    public async getSecret() {
        const secretsPath = "secret/data/webapp/config"
        const response = await fetch(`${process.env.VAULT_ADDR}/v1/${secretsPath}`, {
            method: 'get',
            headers: { 'Content-Type': 'application/json', 'X-Vault-Token': this.clientToken },
        }).then(async (resp) => {
            return await resp.json();
        });
        const {data} = response.data;
        return data;
    }
}