FROM nginx

RUN apt update && apt install unzip -y && rm -rf /usr/share/nginx/html/*

ADD https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip /tmp/



RUN unzip /tmp/expense-frontend-v2.zip -d /usr/share/nginx/html/

# ADD expense.conf /etc/nginx/conf.d/expense.conf
