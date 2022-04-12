FROM golang:1.18-alpine as build

WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o slack-notify *.go

FROM alpine:latest

COPY --from=build /app/slack-notify /

CMD /slack-notify
