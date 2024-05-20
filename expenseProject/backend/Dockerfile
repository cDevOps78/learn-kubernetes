FROM node:20-slim AS builder

RUN apt-get update && apt install unzip  -y

ADD https://expense-artifacts.s3.amazonaws.com/expense-backend-v2.zip /tmp/

WORKDIR /app

RUN unzip /tmp/expense-backend-v2.zip

RUN npm install

# Multi-Stage build starts.

docFROM node:20-slim
WORKDIR /app

COPY --from=builder /app/node_modules/ node_modules
COPY --from=builder /app/index.js .
COPY --from=builder /app/package.json .

CMD ["node","index.js"]




