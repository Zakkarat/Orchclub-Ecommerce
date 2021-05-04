FROM node:12-alpine3.10
WORKDIR /auth-server

COPY . .
RUN npm install
RUN npm run build
EXPOSE 9000
CMD ["node", "dist/app.js"]