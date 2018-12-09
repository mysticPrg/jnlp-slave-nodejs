FROM jenkinsci/jnlp-slave:3.27-1
MAINTAINER Hank Hwang <mysticPrg@gmail.com>

USER root

RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
RUN apt-get install -y nodejs
RUN node --version

USER jenkins
RUN npm install -g yarn

ENTRYPOINT ["jenkins-slave"]
