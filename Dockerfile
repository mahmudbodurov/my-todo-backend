FROM golang:1.16-alpine
WORKDIR /app
COPY go.mod ./
COPY go.sum ./
RUN go mod download
COPY *.go ./
COPY . .
RUN go build -o /my-todo-server

EXPOSE 8080

CMD [ "/my-todo-server" ]