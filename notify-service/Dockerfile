FROM node:12-alpine3.10
WORKDIR /notify-server

COPY . .
RUN npm install
RUN npm run build
EXPOSE 9006
CMD ["node", "dist/app.js"]