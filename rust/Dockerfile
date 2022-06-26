FROM rust:1.61.0-alpine3.16

# Add bash to make package scripts easier to write
RUN apk add bash

WORKDIR /app
COPY .. .

RUN cargo install --path .