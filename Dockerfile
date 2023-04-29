# ARG IMAGE
# FROM $IMAGE

FROM node:alpine

WORKDIR /app

# RUN apt-get update

# RUN apt-get install python
# RUN apt-get install build-base

# RUN pip install --upgrade pip
# RUN pip install --upgrade awscli

RUN npm install pm2 --global
RUN mkdir -p /var/log/pm2

COPY ./app /app/

RUN npm install

CMD [ "npm", "run", "start:pm2" ]