FROM centos:latest
RUN yum install /sbin/service -y
RUN yum install httpd -y
COPY . /usr/local/apache2/htdocs/
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
