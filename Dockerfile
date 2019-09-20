FROM node:alpine

WORKDIR /app

COPY package.json .

RUN npm install
RUN npm cache cleaan
COPY . .

CMD ["npm","start"]

