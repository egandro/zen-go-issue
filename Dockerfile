ARG IMAGE=golang:1.20.7-bullseye
FROM ${IMAGE}

WORKDIR /src

COPY go.* /src
COPY *.go /src
RUN go mod tidy

COPY *.sh /src
