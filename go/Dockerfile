FROM  golang:1.18.3-alpine3.16

# Add bash to make package scripts easier to write
RUN apk add bash

WORKDIR /app

COPY ../go.* ./
RUN go mod download && go mod verify

COPY . .
RUN go build -v -o /usr/local/bin/app ./...