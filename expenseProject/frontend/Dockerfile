FROM nginx

RUN apt update && apt install unzip -y && rm -rf /usr/share/nginx/html/*

ADD https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip /tmp/

RUN unzip /tmp/expense-frontend-v2.zip -d /usr/share/nginx/html/

ADD nginx.conf /etc/nginx/nginx.conf

CMD ["/bin/bash","-c","envsubst '${backend_ip}' < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf1 && mv /etc/nginx/nginx.conf1 /etc/nginx/nginx.conf && nginx -g 'daemon off;'"]
