# Ansible managed: /workspace/users/albandri10/env/ansible/roles/grive/templates/Dockerfile.j2 modified on 2014-10-31 23:50:12 by albandri on albandri-laptop-misys.misys.global.ad
#FROM        debian:jessie
#FROM        stackbrew/ubuntu:14.04
FROM        jasongiedymin/ansible-base-ubuntu

# Volume can be accessed outside of container
VOLUME      [/workspace/users/albandri10/]

MAINTAINER  Alban Andrieu "https://github.com/AlbanAndrieu"

ENV			DEBIAN_FRONTEND noninteractive
ENV         grive_HOME /workspace/users/albandri10/
ENV         WORKDIR /home/vagrant

# Working dir
WORKDIR /home/vagrant

# COPY
#COPY

RUN         pwd
RUN         ls -lrta

# ADD
ADD defaults $WORKDIR/ansible-grive/defaults
ADD meta $WORKDIR/ansible-grive/meta
ADD files $WORKDIR/ansible-grive/files
ADD handlers $WORKDIR/ansible-grive/handlers
ADD tasks $WORKDIR/ansible-grive/tasks
ADD templates $WORKDIR/ansible-grive/templates
#ADD vars $WORKDIR/ansible-grive/vars

# Here we continue to use add because
# there are a limited number of RUNs
# allowed.
ADD hosts /etc/ansible/hosts
ADD grive.yml $WORKDIR/ansible-grive/grive.yml

# Execute
RUN         pwd
RUN         ls -lrta
RUN         ansible-playbook $WORKDIR/ansible-grive/grive.yml -c local -vvvv

#RUN         apt-get update && \
#            apt-get install -y openssh-server openjdk-7-jre-headless
#RUN         useradd -m -s /bin/bash jenkins
#RUN         echo jenkins:jenkins | chpasswd
#RUN         mkdir -p /var/run/sshd
            
EXPOSE 21:9999
ENTRYPOINT  ["/usr/bin/grive", "start"]
CMD ["-g", "deamon off;"]
