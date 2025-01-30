FROM public.ecr.aws/extremecloud/apache-tomcat:9.0.97-al2-20241201
# Install prerequisites
COPY apache-tomcat-10.1.34.tar.gz /tmp
RUN cd /tmp
RUN pwd
RUN ls -lrt /opt/
RUN ls -ltr /
RUN tar xvfz /tmp/apache-tomcat-10.1.34.tar.gz
RUN mkdir -p /opt/tomcat
RUN cp -Rv /tmp/apache-tomcat-10.1.34/* /opt/tomcat/
EXPOSE 8080
# java
# RUN echo $JAVA_HOME
# Define default command.
MAINTAINER bhaskarndas@gmail.com
WORKDIR /opt/tomcat/webapps
COPY onlinebookstore.war /opt/tomcat/webapps/
# RUN curl -O -L https://github.com/bhaskarndas/sample-war/raw/main/sampletest.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

