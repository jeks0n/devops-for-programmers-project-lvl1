FROM node:14.16

WORKDIR /app

COPY ./app/package*.json ./

RUN npm ci

COPY ./app .
