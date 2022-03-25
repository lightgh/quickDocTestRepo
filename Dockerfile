FROM alpine
LABEL maintainer="chinakalight@googlemail.com"
RUN apk add --update nodejs npm
COPY . /src
WORKDIR /src
RUN npm install
EXPOSE 8080
ENTRYPOINT [ "node", "./main.js" ]
