## Stage 1: backend 
FROM node:lts-alpine 
LABEL maintainer = Tcarters Edmond
LABEL  email = cartersedmund@gmail.com

#WORKDIR /usr/src/app/
WORKDIR /app/backend

COPY  backend/package*.json  ./

COPY  backend/.env ./
#volumes:
# - backend/.env:/usr/src/app/backend/.env
RUN npm install
COPY backend/server.js .

EXPOSE 2000
RUN  "/bin/sh" -c npm start &

## Stage 2 : frontend 

# Create app directorym
WORKDIR /app/frontend

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY client/package*.json ./
RUN  npm install
COPY client/assets/ ./assets
COPY client/public ./public
COPY client/index.html ./
COPY client/main.js ./
COPY client/style.css ./
COPY client/javascript.svg ./

# Bundle app /source
#EXPOSE 5173
EXPOSE 8000 
CMD  [ "npm",  "run" , "dev" , "--"  , "--port" , "8000" ]
