FROM golang:latest

WORKDIR /app

COPY ./main .

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]