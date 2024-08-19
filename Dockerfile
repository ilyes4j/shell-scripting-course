FROM ubuntu:latest

# unminimize the ubuntu image so that we are able to use apt, usual commands and such
RUN yes | unminimize

# install sudo package so that we are able to execute commands with the current user
# (considering he have sudo priviledges)
RUN yes | apt-get install sudo

RUN echo "root:root" | chpasswd

# remove user password so that a sudo command does not require a password input
RUN passwd -d ubuntu

WORKDIR /home/ubuntu
