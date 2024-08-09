
#FROM ubuntu:latest
#RUN apt-get update && apt-get upgrade -y nginx
#EXPOSE 80
#CMD ["nginx", "-g", "daemon off;"]



#FROM nginx:latest
#COPY index.html /usr/share/nginx/html/

FROM ubuntu:latest
WORKDIR /app
COPY ejemplo.txt .
