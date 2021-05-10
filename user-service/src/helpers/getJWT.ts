import * as fs from "fs";
import fetch from "node-fetch";

export default async () => {
    if (process.env.JWT_PATH) {
        const path:string = process.env.JWT_PATH;
        const token = fs.readFileSync(path, 'utf-8');
        const body = {role: 'webapp', jwt: token}
        const clientToken = await fetch(`${process.env.VAULT_ADDR}/v1/auth/kubernetes/login`, {
                method: 'put',
                body: JSON.stringify(body),
                headers: { 'Content-Type': 'application/json' },
            }
        ).then(async (resp) => {
            const body = await resp.json();
            return body.auth.client_token;
        });
        const secretsPath = "secret/data/webapp/config"
        const response = await fetch(`${process.env.VAULT_ADDR}/v1/${secretsPath}`, {
            method: 'get',
            headers: { 'Content-Type': 'application/json', 'X-Vault-Token': clientToken },
        }).then(async (resp) => await resp.json());
        const {data} = response.data;
        return data.JWT_TOKEN;
    }
}