# FROM nginx:1.19.3-alpine
FROM yuchen168/myapp002

# COPY app /usr/local/app

COPY nginx.conf /etc/nginx/nginx.conf

COPY html.zip /usr/local/html.zip
RUN unzip /usr/local/html.zip -d /usr/local/html

EXPOSE 10000

CMD ["nginx", "-g", "daemon off;"]
# nginx -g 'daemon off;'

# ADD app.sh /
# RUN chmod +x /app.sh
# CMD /app.sh
