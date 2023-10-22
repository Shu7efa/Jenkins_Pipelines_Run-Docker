FROM nginx:latest
MAINTAINER huzefashah01@gmail.com

RUN apt-get update && apt-get install -y nginx \
 zip\
 unzip

# Use the provided website URL
ADD https://cloudage.co.in/ /usr/share/nginx/html/cloudage-website.zip

WORKDIR /usr/share/nginx/html
RUN unzip cloudage-website.zip
RUN cp -r html/* /usr/share/nginx/html
RUN rm -rf html cloudage-website.zip

#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

