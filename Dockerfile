# FROM golang:1.16 AS build

# WORKDIR /app

# COPY . .

# RUN CGO_ENABLED=0 GOOS=linux go build -o simple-golang

FROM alpine:3.17

WORKDIR /app

COPY /simple-golang /app.

EXPOSE 8080

CMD ["./simple-golang"]
