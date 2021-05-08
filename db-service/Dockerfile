FROM node:12-alpine3.10
WORKDIR /db-server

COPY . .
RUN npm install
RUN npm run build
EXPOSE 9001
CMD ["node", "dist/app.js"]