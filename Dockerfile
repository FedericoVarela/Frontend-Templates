FROM node:alpine

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn

RUN yarn build

COPY . .

ENV PORT=5000

EXPOSE 5000

CMD [ "yarn", "start" ]
