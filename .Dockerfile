FROM gitpod/workspace-full-vnc

USER root

RUN apt-get update
RUN apt-get install -y libx11-dev libxkbfile-dev libsecret-1-dev libgconf-2-4 libnss3
RUN apt-get install -y libgtk-3-dev
RUN apt-get -y install x11-xserver-utils
RUN rm -rf /var/lib/apt/lists/*
RUN sed -i s/1920x1080/1440x800/ /usr/bin/start-vnc-session.sh

USER gitpod

# ..