FROM node:alpine
WORKDIR /auth-server

COPY . .
RUN npm install
RUN npm run build
EXPOSE 8080
CMD ["node", "dist/app.js"]