FROM public.ecr.aws/docker/library/centos:centos7.9.2009

# Install prerequisites
RUN apt-get -y update &amp;&amp; apt-get -y upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN apt-get -y install curl
RUN mkdir /usr/local/tomcat
# RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.1.34/bin/apache-tomcat-10.1.34.tar.gz
COPY apache-tomcat-10.1.34.tar.gz /tmp
RUN cd /tmp
RUN pwd
RUN ls -lrt
RUN tar xvfz /tmp/apache-tomcat-10.1.34.tar.gz
RUN cp -Rv /apache-tomcat-10.1.34/* /usr/local/tomc
