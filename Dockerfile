FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git git-svn subversion && \
    apt-get install -y openjdk-11-jdk && \

ENTRYPOINT ["sh","/entrypoint.sh"]
