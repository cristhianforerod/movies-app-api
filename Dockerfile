FROM node:lts-alpine

RUN apk add --update --no-cache postgresql-client postgresql-dev

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

