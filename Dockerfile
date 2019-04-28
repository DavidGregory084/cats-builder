FROM openjdk:8-jdk-slim

RUN apt-get update && \
    apt-get install -y apt-transport-https apt-utils gpg

RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    echo "deb https://deb.nodesource.com/node_11.x stretch main" | tee -a /etc/apt/sources.list.d/nodesource.list

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 68576280 && \
    apt-get update && apt-get install -y sbt nodejs

