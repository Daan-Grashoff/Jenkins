FROM jenkins

USER root

RUN apt-get update && apt-get install -y nodejs
RUN apt-get install -y npm

RUN npm install nodemon -g
COPY package.json /tmp/package.json
RUN cd /tmp && npm install

# COPY app.js app.js
EXPOSE 3000

USER jenkins