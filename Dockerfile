FROM node:v21.5.0

EXPOSE 3000

WORKDIR /app/
COPY package.json /app/
COPY package.lock.json /app/

RUN npm ci
COPY . /app

CMD npm start
