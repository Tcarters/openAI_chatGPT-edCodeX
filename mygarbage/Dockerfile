FROM node:alpine AS client-frontend
LABEL maintainer = Tchamie Edmond 
LABEL  email = cartersedmund@gmail.com

# Create app directory
WORKDIR /usr/src/app/frontend

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


#RUN  npm run build


# Bundle app /source
# COPY server.js ./
EXPOSE 5173 
CMD  [ "npm",  "run" , "dev"] 
#CMD [ "node" , "server.js" ]

FROM node:alpine AS backend

#WORKDIR /usr/src/app/

#COPY --from=client-frontend /usr/src/app/frontend/build ./frontend/build

WORKDIR /usr/src/app/backend

COPY  backend/package*.json  ./
#COPY ../backend/package-lock.json ./
COPY  backend/.env ./
#volumes:
# - backend/.env:/usr/src/app/backend/.env

RUN npm install

COPY  backend/server.js .

ENV NODE_ENV=production

EXPOSE 2000

CMD [ "node" , "server.js" ]

