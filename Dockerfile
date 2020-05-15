
FROM node:14-alpine as build
RUN mkdir /app
WORKDIR /app

COPY htu-devops-konsul-web/package.json  /app/package.json
RUN  apk add --update nodejs && apk add --update nodejs-npm
COPY htu-devops-konsul-web /app

RUN echo && ls && npm install --global @gridsome/cli
#RUN apk add --update nodejs npm
COPY . .
RUN npm run build


FROM nginx:1.15.7-alpine
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80

#CMD [ "node", "server.js" ]

#CMD ["nginx", "-g", "daemon off;"]



#COPY --chown=node:node htu-devops-konsul-web/  /app
#CMD node index.js

