import {Kafka} from "kafkajs";


const kafka = new Kafka({
    clientId: 'kafka',
    brokers: [`my-cluster-kafka-bootstrap:9092`]
});

export const sendMessageViaProducer = async (info:any) => {
    if (kafka) {
        const producer = kafka.producer();
        if (producer) {
            await producer.connect();
            await producer.send({
                topic: 'purchase',
                messages: [
                    {key: 'purchase-alert', value: JSON.stringify(info)}
                ]
            })
            await producer.disconnect();
        }
    }
}