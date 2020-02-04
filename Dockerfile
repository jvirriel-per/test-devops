FROM node:12.13.0-alpine

LABEL maintainer="Jose Virriel <jvirriel@nisum.com>"
LABEL description="Maintainer"

RUN apk update
RUN apk add --no-cache git 

WORKDIR /app
COPY package.json .
COPY package-lock.json .

RUN npm ci
COPY . ./
