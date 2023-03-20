FROM  centos:latest
LABEL MAINTAINER THETHINH
RUN dnf -y --disablerepo '*' --enablerepo=extras swap centos-linux-repos centos-stream-repos
RUN dnf -y distro-sync
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page289/nomad-force.zip Force Free Website Template - Free-CSS.com.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip Nomad Force Free Website Template - Free-CSS.com.zip
RUN cp -rf /Nomad Force Free Website Template - Free-CSS.com/* .
RUN rm -rf Nomad Force Free Website Template - Free-CSS.com Nomad Force Free Website Template - Free-CSS.com.zip
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