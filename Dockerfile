# pull official base image
FROM alpine

RUN apk update
RUN apk add npm

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

RUN npm install -g expo-cli
