FROM centos:6.6
LABEL maintainer="ragu"
USER root
COPY scripts/start_server.sh .
RUN chmod +x start_server.sh
CMD ["sh","start_server.sh"]
