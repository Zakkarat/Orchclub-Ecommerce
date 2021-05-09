FROM node:12-alpine3.10
WORKDIR /orchid-server

COPY . .
RUN npm install
RUN npm run build
EXPOSE 9002
CMD ["node", "dist/app.js"]