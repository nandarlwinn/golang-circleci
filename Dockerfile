FROM alpine:3.17

WORKDIR /app

COPY simple-golang /app/

EXPOSE 8080

CMD ["./simple-golang"]
