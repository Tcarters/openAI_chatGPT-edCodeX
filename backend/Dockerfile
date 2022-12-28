FROM node:alpine 
LABEL maintainer = Tchamie Edmond
LABEL  email = cartersedmund@gmail.com

#WORKDIR /usr/src/app/

WORKDIR /app/backend

COPY  package*.json  ./

COPY  .env ./
#volumes:
# - backend/.env:/usr/src/app/backend/.env

RUN npm install

COPY server.js .

ENV NODE_ENV=production

EXPOSE 2000

CMD [ "node" , "server.js" ]
