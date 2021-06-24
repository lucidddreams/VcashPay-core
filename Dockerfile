

FROM phusion/baseimage:0.9.21

ENV LANG C.UTF-8
ENV LANGUAGE C
ENV LC_ALL C.UTF-8

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list
RUN apt-get update && apt-get install -y software-properties-common
RUN add-apt-repository ppa:webupd8team/java -y
RUN apt-get update
RUN apt-get install -y wget unzip
RUN wget https://d3pxv6yz143wms.cloudfront.net/8.212.04.2/java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb && \
    apt-get update &&  apt-get install java-common && apt-get install -y --no-install-recommends apt-utils && \
    dpkg --install java-1.8.0-amazon-corretto-jdk_8.212.04-2_amd64.deb


RUN mkdir /nxt
ADD . /nxt

RUN echo 'nxt.allowedBotHosts=*' >> /nxt/conf/nxt.properties
RUN echo 'nxt.apiServerHost=0.0.0.0' >> /nxt/conf/nxt.properties
RUN cd /nxt; chmod +x ./docker_start.sh

RUN cd /nxt; ./compile.sh

EXPOSE 16876 16874
CMD ["/nxt/docker_start.sh"]
