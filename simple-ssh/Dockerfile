FROM alpine:latest

USER root

# Install openssh
RUN apk update && apk add openssh

# Add the ssh key to deploy
RUN mkdir -p "/root/.ssh"
VOLUME /root/.ssh

# Generate SSH keys
CMD ssh-keygen -q -t rsa -P '' -f /root/.ssh/id_rsa
