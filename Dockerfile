FROM ubuntu:latest

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    git \
    git-svn \
    subversion \
    openjdk-11-jdk \
    expect && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    chmod +x /entrypoint.sh

ENTRYPOINT ["sh","/entrypoint.sh"]
