FROM node:18-alpine as nodedemo

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

RUN npm run build

FROM nginx:stable-alpine3.19-otel

COPY --from=nodedemo /app/build /usr/share/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf

#RUN  sudo chmod 644 default.conf 

EXPOSE 80