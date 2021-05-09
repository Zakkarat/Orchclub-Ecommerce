FROM node:12-alpine3.10
WORKDIR /user-server

COPY . .
RUN npm install
RUN npm run build
EXPOSE 9004
CMD ["node", "dist/app.js"]