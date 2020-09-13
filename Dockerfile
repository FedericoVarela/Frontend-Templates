FROM node:alpine

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

COPY . .

RUN yarn install

RUN yarn build

ENV PORT=5000

EXPOSE 5000 35729 3572

CMD [ "yarn", "start" ]
