FROM quay.io/centos/centos:stream9

RUN yum -y update && yum -y install vsftpd && yum clean all

# templeate 복사 진행
COPY  vsftpd.conf.centos9.template /etc/vsftpd/vsftpd.conf
# volume 지정
VOLUME /var/ftp/pub
# /var/ftp/pub으로 복사 진행
COPY WelcomeToMYFTPServer.txt /var/ftp/pub/WelcomeToMYFTPServer.txt


EXPOSE 20 21

ENTRYPOINT ["/usr/sbin/vsftpd"]