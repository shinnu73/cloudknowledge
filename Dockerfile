FROM centos:latest
MAINTAINER sanjay.dahiya@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://all-free-download.com/free-website-templates/download/profile_website_template_6891364.html  /var/www/html/
WORKDIR /var/www/html
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
