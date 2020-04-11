FROM golang:1.12-alpine

RUN set -ex; \
    apk update; \
    apk add --no-cache git

WORKDIR /go/src/github.com/h4ck3rk3y/ci-test/

CMD CGO_ENABLED=0 go test ./...
