FROM golang:1.21

WORKDIR /app

COPY ./main .

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]