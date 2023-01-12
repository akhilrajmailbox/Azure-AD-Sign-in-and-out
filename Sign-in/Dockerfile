FROM node:16.0.0
MAINTAINER Akhil Raj

COPY ms-identity-node /opt/ms-identity-node
WORKDIR /opt/ms-identity-node/App
RUN npm install && npm update

EXPOSE 3000
ENTRYPOINT [ "npm", "start" ]