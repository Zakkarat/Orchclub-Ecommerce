#build
FROM node:14.15-alpine as build
WORKDIR /app
COPY ./package.json ./
COPY ./package-lock.json ./
RUN npm install
COPY . .
RUN npm run build

EXPOSE 80
CMD ["npm", "run", "start-dockerized"]