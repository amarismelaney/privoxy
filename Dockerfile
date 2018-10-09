FROM alpine:3.7

EXPOSE 8118

RUN apk --update add privoxy

COPY service /etc/service/
WORKDIR /etc/service/

ENTRYPOINT privoxy --no-daemon config
