FROM nginx:1.19.3-alpine

# COPY app /usr/local/app

COPY nginx/nginx.conf /etc/nginx/nginx.conf


EXPOSE 10000

CMD ["nginx", "-g", "daemon off;"]
# nginx -g 'daemon off;'

# ADD app.sh /
# RUN chmod +x /app.sh
# CMD /app.sh
