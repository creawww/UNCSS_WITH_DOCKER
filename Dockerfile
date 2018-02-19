FROM node:7.9.0

RUN npm install -g uncss

ARG USER=node
USER ${USER}

WORKDIR /home/${USER}/app
