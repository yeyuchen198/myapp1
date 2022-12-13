# FROM nginx:1.19.3-alpine
FROM yuchen168/myapp002

# COPY app /usr/local/app
# RUN mv /docker-entrypoint.sh /docker-entrypoint.sh.cancel 

COPY nginx.conf /etc/nginx/nginx.conf
COPY app.json /etc/myapp/app.json
COPY myapp /usr/local/myapp
RUN install -m 755 /usr/local/myapp /usr/local/bin/myapp


COPY html.zip /usr/local/html.zip
WORKDIR /usr/local
RUN mkdir html
RUN unzip html.zip -d html

EXPOSE 10000

# RUN /usr/local/bin/myapp -config=/etc/myapp/app.json &
WORKDIR /usr/local/bin
RUN ls
RUN /usr/local/bin/myapp -config=/etc/myapp/app.json &


CMD ["nginx", "-g", "daemon off;"]
# nginx -g 'daemon off;'

# ADD app.sh /
# RUN chmod +x /app.sh
# CMD /app.sh
