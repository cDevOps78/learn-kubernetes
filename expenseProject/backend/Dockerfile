FROM node:20-slim

RUN apt-get update && apt install unzip -y

ADD https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip /tmp/

WORKDIR /app

RUN unzip /tmp/expense-backend-v2.zip .

RUN npm install
