FROM ubuntu:12.04

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y openssh-server

RUN mkdir /var/run/sshd
RUN bash -c 'echo "root:root" | chpasswd'

CMD /usr/sbin/sshd -D
EXPOSE 22
