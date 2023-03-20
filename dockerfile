FROM  centos:latest
LABEL MAINTAINER THETHINH
RUN dnf -y --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos
RUN dnf -y distro-syncnomad-force
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/nomad-force.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip nomad-force.zip
RUN cp -rf /nomad-force /var/www/html/nomad-force 
RUN rm -rf nomad-force nomad-force.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
 
 
# FROM  centos:latest
# LABEL MAINTAINER THETHINH
# RUN dnf -y --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos
# RUN dnf -y distro-sync
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80  