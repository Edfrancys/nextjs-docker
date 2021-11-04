FROM node:16.13.0

RUN node -v

RUN mkdir /home/next/app

WORKDIR /home/next/app

COPY ./nextjs/package*.json .

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000

CMD "npm" "run" "dev"