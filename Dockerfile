FROM ubuntu:20.04

LABEL maintainer="Prasant Jalan <prasant.jalan@gmail.com>"

RUN apt-get update

# Install packages required by uplink
RUN apt -y install curl build-essential

# Install additional utility packages
RUN apt-get install -y tree vim

# Clean up apt temp files
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set aliases
RUN echo 'alias l="ls -allFh"' >> ~/.bashrc

WORKDIR /root/
CMD "/bin/bash"
