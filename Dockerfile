FROM golang:1.17

WORKDIR /go/src/app
COPY server/app.go .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags '-w -extldflags "-static"' -o app app.go

FROM scratch

COPY --from=0 /go/src/app/app /server/
COPY client/build/ /client/build/

EXPOSE 8080

CMD ["/server/app"]
