FROM golang:1.12-alpine

RUN set -ex; \
    apk update; \
    apk add --no-cache git

ADD . /test
WORKDIR /test

RUN go get github.com/stretchr/testify

RUN CGO_ENABLED=0 go test -v .
