FROM golang:1.21

WORKDIR /app

RUN go build -o main .

COPY . .

EXPOSE 8000

CMD ["./main"]