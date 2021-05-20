import {Kafka} from 'kafkajs';
import {MessageError, MessageRequestResponse} from "@vonage/server-sdk";
import {Vault} from "../vault/Vault";
const Vonage = require('@vonage/server-sdk')


export class PhoneService {
    constructor(private vonage:typeof Vonage) {}

    static async build() {
        const vault = await Vault.build();
        const secrets = await vault.getSecret();
        console.log(secrets);
        const vonage = new Vonage({
            apiKey: secrets.SMS_TOKEN,
            apiSecret: secrets.SMS_SECRET
        });
        const phoneService = new PhoneService(vonage);

        const kafka = new Kafka({
            clientId: 'kafka',
            brokers: [`my-cluster-kafka-bootstrap:9092`]
        });
        const consumer = kafka.consumer({groupId:"purchase-consumer"});
        await consumer.subscribe({topic:'purchase', fromBeginning: false})
        await consumer.run({
            eachMessage: async ({ message }) => {
                console.log(message, "Message");
                if (message.value) {
                    console.log(message.value.toString(), "TO STRING");
                    const data = JSON.parse(message.value.toString());
                    console.log(data, "DATA");
                    phoneService.sendSMS(data[0].Phone);
                }
            },
        })
    }

    private sendSMS(phone:string) {
            this.vonage.message.sendSms("Orchclub", phone, "Ваш заказ рассматривается.", {}, (err:MessageError, responseData:MessageRequestResponse) => {
                if (err) {
                    console.log(err);
                } else {
                    if (responseData.messages[0]['status'] === "0") {
                        console.log("Message sent successfully.");
                    } else {
                        console.log(`Message failed with error: ${responseData.messages[0]['error-text']}`);
                    }
                }
            })
        }

    // @ts-ignore
    public sendSMSManual(name:string, number:string, message:string) {
        this.vonage.message.sendSms("Orchclub", number, message,{}, (err:MessageError, responseData:MessageRequestResponse) => {
            if (err) {
                console.log(err);
            } else {
                if(responseData.messages[0]['status'] === "0") {
                    console.log("Message sent successfully.");
                } else {
                    console.log(`Message failed with error: ${responseData.messages[0]['error-text']}`);
                }
            }
        })
    }
}
