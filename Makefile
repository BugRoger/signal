IMAGE    ?= bugroger/signal

.PHONY: clean build push

bin/signal: main.go Makefile
	GOOS=linux GOARCH=amd64 go build -v -i -o bin/signal .

build: bin/signal
	docker build -t $(IMAGE):latest .

push: build
	docker push $(IMAGE):latest

clean:
	rm -rf bin/*