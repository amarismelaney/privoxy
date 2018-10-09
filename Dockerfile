FROM alpine:3.7

RUN apk --update add privoxy

COPY service /etc/service/
WORKDIR /etc/service/
RUN sed -i "s/%PORT%/$PORT/g"  config

CMD privoxy --no-daemon config
