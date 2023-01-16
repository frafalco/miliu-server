FROM node:latest

WORKDIR /app/medusa

COPY package.json .

RUN apt-get update

RUN apt-get install -y python

#RUN npm install -g npm@8.1.2

RUN npm install -g @medusajs/medusa-cli@latest

RUN npm install

COPY . .

ENTRYPOINT ["./develop.sh"]