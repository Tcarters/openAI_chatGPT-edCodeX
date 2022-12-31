FROM node:lts-alpine 
#AS client-frontend
LABEL maintainer = Tcarters Edmond 
LABEL  email = cartersedmund@gmail.com

# Create app directory
#RUN apt update -y && apt install -y npm nodejs
WORKDIR /app/frontend

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN  npm install
COPY assets/ ./assets
COPY public ./public
COPY index.html ./
COPY main.js ./
COPY style.css ./
COPY javascript.svg ./

# Bundle app /source
#EXPOSE 5173
EXPOSE 8000 
CMD  [ "npm",  "run" , "dev" , "--"  , "--port" , "8000" ]
