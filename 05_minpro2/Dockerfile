FROM quay.io/centos/centos:stream9

RUN yum -y install httpd php && yum clean all

COPY index.html info.php /var/www/html
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

VOLUME /var/www/html /var/log/httpd

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
