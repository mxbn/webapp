all: clean app

app:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags '-w -extldflags "-static"' -o app app.go

clean:
	rm -f app
