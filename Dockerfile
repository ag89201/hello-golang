FROM golang:1.22.1
WORKDIR /app
COPY . .
RUN go mod tidy
RUN CGO_ENABLED=0 GOS=linux GOARCH=amd64 go build -o /main main.go

CMD ["/main"]
