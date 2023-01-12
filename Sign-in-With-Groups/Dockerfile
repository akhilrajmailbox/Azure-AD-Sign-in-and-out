FROM node:16.0.0
MAINTAINER Akhil Raj

COPY ms-identity-node /opt/ms-identity-node
WORKDIR /opt/ms-identity-node/4-AccessControl/2-security-groups/App
RUN npm install && npm update

EXPOSE 4000
ENTRYPOINT [ "npm", "start" ]