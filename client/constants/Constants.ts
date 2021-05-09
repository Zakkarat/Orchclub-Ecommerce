let isProduction = false;

if (process.env.NODE_ENV === "production") {
    isProduction = true;
}

export const HOSTNAME = (document:Document) => isProduction ? document.location.host : "localhost:9004";