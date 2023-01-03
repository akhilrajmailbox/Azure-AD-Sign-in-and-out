FROM node:16.0.0
MAINTAINER Akhil Raj

COPY webapp-example /opt/webapp-example
WORKDIR /opt/webapp-example
RUN npm install && npm update

EXPOSE 3000
ENTRYPOINT [ "node", "index.js" ]