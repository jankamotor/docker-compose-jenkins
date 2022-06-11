FROM nginx
LABEL version="1.0"
LABEL description="Despliegue app Angular from remote server"
LABEL vendor="jankamotor"
#COPY ./src /usr/share/nginx/html
VOLUME /usr/share/nginx/html
VOLUME /var/log/nginx


CMD ["nginx", "-g", "daemon off;"]
