.PHONY: build run

all: clean build run

build:
	go build ./cmd/...

run:
	@./foo

clean:
	rm -rf foo
