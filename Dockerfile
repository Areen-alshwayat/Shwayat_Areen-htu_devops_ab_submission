
FROM node:14-alpine as build
RUN mkdir /app
WORKDIR /app

COPY htu-devops-konsul-web/package.json  /app/package.json
#RUN npm install -g yarn
RUN  apk add --update nodejs && apk add --update nodejs-npm
RUN apk update && apk add yarn python g++ make && rm -rf /var/cache/apk/*

COPY htu-devops-konsul-web /app
Run npm i sharp
#RUN npm cache clean — force && npm install
#RUN npm install sharp
RUN npm install -g yarn
RUN npm i fsevents
RUN npm install --build-from-source

RUN echo && ls && npm install --global @gridsome/cli
RUN echo && ls && yarn && npm run build && ls
#RUN apk add --update nodejs npm
#COPY . .


FROM nginx:1.15.7-alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

#CMD [ "node", "server.js" ]
#COPY --chown=node:node htu-devops-konsul-web/  /app
#CMD node index.js

