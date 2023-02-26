FROM centos:7

MAINTAINER Devopscube

RUN yum -y update && yum -y install httpd && yum clean all

COPY ./ /

RUN chmod +x /gen.sh
RUN chmod +x /unifi-api.sh

ENTRYPOINT ["/gen.sh"]

CMD ["24", "1000"]
