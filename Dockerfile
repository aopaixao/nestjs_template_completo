FROM node

WORKDIR /opt/docker_files/voltz_pixqrcodeestatico

RUN /bin/sh -c "apt-get install bash"

COPY package*.json ./
RUN npm install -g npm && npm install
RUN npm i -g @nestjs/cli

COPY . .

EXPOSE 3000

CMD ["npm", "start"]