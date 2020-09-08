FROM node:14-alpine

WORKDIR /usr/src/app

COPY rollup.config.js ./
COPY package.json yarn.lock ./

RUN npm install -g yarn

RUN yarn

COPY ./src ./src
COPY ./public ./public

RUN yarn run build

EXPOSE 5000

ENV HOST=0.0.0.0

CMD [ "yarn", "run start" ]