# a base image

FROM node:14-alpine as build

# Use app/ as the working directory
RUN mkdir /app
WORKDIR /app

# Copy the files from the htu-devops-konsul-web/package.json into  directory to app/package.json
COPY htu-devops-konsul-web/package.json  /app/package.json

# Install dependencies
RUN npm install --global @gridsome/cli
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps
RUN  apk add --update nodejs && apk add --update nodejs-npm
RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --no-cache yarn --repository="http://dl-cdn.alpinelinux.org/alpine/edge/community"
RUN yarn -v

# Copy the files from the htu-devops-konsul-web to app/
# copy app source to image _after_ npm install
COPY htu-devops-konsul-web /app


FROM nginx:1.15.7-alpine 
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


