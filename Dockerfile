FROM golang:1.16 AS build

WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -o simple-golang

FROM alpine:latest

WORKDIR /app

COPY --from=build /app/simple-golang .

CMD ["./simple-golang"]
