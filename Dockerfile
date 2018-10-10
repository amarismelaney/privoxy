FROM alpine:3.7

RUN apk --update add privoxy

COPY service /etc/service/
WORKDIR /etc/service/
RUN chmod +x run.sh

CMD /etc/service/run.sh 8118 #$PORT
