FROM node:16

RUN mkdir -p /app
WORKDIR /app

COPY ./start.sh /start.sh

COPY ./nextjs/package.json /app
RUN npm install

COPY ./nextjs /app

RUN npm run build

EXPOSE 3000

CMD [ "/start.sh" ]