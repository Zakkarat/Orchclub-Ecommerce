const loadtest = require('loadtest');

const username = "Merilend";
const password = "Yakuza";

const optionsLogin = {
    url: 'http://localhost:9000/auth/login',
    maxRequests: 10000,
    method: "POST",
    concurrency: 100,
    contentType: "application/json",
    body: JSON.stringify({ username, password }),
};

const optionsOrchids = {
    url: 'http://localhost:9000/orchids?category=%D0%92%D0%B0%D0%BD%D0%B4%D0%BE%D0%B2%D1%8B%D0%B5',
    maxRequests: 10000,
    method: "GET",
    concurrency: 100,
};

const optionsVerify = {
    url: 'http://localhost:9000/auth/verify',
    maxRequests: 10000,
    method: "POST",
    concurrency: 100,
    contentType: "application/json",
    cookies: ["UID=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjE3LCJpYXQiOjE2MDQ1ODY1OTl9.K2uZnEpFUvfyFzdU3GkkbWBFZKSQbKtzgCfbagb_K9s"]
};

function statusCallback(err, result) {
    if(err) {
        throw err;
    }
    console.log('Total requests: ', result.totalRequests);
    console.log('Request elapsed seconds: ', result.totalTimeSeconds);
    console.log('Requests per second: ', result.rps);
    console.log('Request mean latency: ', result.meanLatencyMs, " ms");

    console.log("Percentage of the requests served within a certain time")
    Object.keys(result.percentiles).map(percentile =>
    {
        console.log(`${percentile}%  ${result.percentiles[percentile]}ms`)
    })
}


loadtest.loadTest(optionsLogin, statusCallback);
loadtest.loadTest(optionsOrchids, statusCallback);
loadtest.loadTest(optionsVerify, statusCallback);