FROM public.ecr.aws/docker/library/node:22.13.1-alpine as builder

WORKDIR /app

COPY package.json .

RUN npm install

FROM node:22.19.0-alpine as runner

WORKDIR /app

CMD ["echo", "Hello, world!"]
