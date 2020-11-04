FROM node:10-alpine

WORKDIR /usr/src/page

COPY ./package* /usr/src/page/
RUN npm install

COPY ./ /usr/src/page

RUN npm run sass
RUN npm run run

#this lines are not in use for multistage build
#EXPOSE 8081
#CMD [ "eleventy", "--serve", "--port=8081"]

FROM nginx:alpine

COPY --from=0 /usr/src/page/_site /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf
