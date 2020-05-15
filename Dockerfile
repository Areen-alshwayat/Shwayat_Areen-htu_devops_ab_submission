
FROM node:14-alpine as build
RUN mkdir /app
WORKDIR /app

COPY htu-devops-konsul-web/package.json  /app/package.json
#RUN npm install -g yarn
RUN npm install --global @gridsome/cli
#pwd && ls
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps
RUN  apk add --update nodejs && apk add --update nodejs-npm

RUN apk add --update bash && rm -rf /var/cache/apk/*
RUN apk add --no-cache yarn --repository="http://dl-cdn.alpinelinux.org/alpine/edge/community"

RUN yarn -v
COPY htu-devops-konsul-web /app

#RUN apk update && apk add yarn python g++ make && rm -rf /var/cache/apk/*

#Run npm i sharp
#RUN npm cache clean — force && npm install
#RUN npm install sharp
#RUN npm install -g yarn
#RUN npm i fsevents
#RUN npm install --build-from-source

#RUN echo && ls && npm install --global @gridsome/cli
#RUN echo && ls && yarn && npm run build && ls
#RUN apk add --update nodejs npm
#COPY . .


FROM nginx:1.15.7-alpine 
#COPY --from=build htu-devops-konsul-web/ /usr/share/nginx/html

COPY --from=build dist/  /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

#CMD [ "node", "server.js" ]
#COPY --chown=node:node htu-devops-konsul-web/  /app
#CMD node index.js

