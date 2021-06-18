---
to: <%= name %>/goproxy.dockerfile
---
FROM golang:1.15

RUN go env -w GO111MODULE="on" && \
    go env -w GOPROXY="https://goproxy.io,direct"
