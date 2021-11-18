FROM node:14.18.1-slim

WORKDIR /opt/docker_files/pix_cliente_rabbitmq

RUN /bin/sh -c "apt-get install bash"

RUN apt-get update && apt-get install -y procps

COPY package*.json ./
RUN npm install -g npm@7.5.6
RUN npm install
RUN npm i -g @nestjs/cli

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
