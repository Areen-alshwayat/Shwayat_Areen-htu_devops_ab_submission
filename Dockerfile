
FROM node:14-alpine as build

RUN mkdir /app

WORKDIR /app

COPY htu-devops-konsul-web/package.json  /app/package.json


RUN  apk add --update nodejs && apk add --update nodejs-npm

COPY . /app

FROM nginx:1.15.7-alpine
COPY --chown=node:node htu-devops-konsul-web/  /app

#COPY --from=build /app/dist /usr/share/nginx/html
#CMD node index.js

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
