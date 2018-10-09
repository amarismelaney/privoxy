FROM alpine:3.7

EXPOSE 80

RUN apk --update add privoxy

COPY service /etc/service/
WORKDIR /etc/service/

CMD privoxy --no-daemon config
