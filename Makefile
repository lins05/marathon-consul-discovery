PACKAGE=marathon-consul-discovery_linux_amd64.zip
BINARY=/data/gopath/bin/marathon-consul-discovery

$(BINARY): deps
	go build ./...

deps:
	go get ./...

build:
	go build

run:
	./marathon-consul-discovery -marathon=localhost:8080 -port=8090

$(PACKAGE): $(BINARY)
	zip -j $@ $<

package: $(PACKAGE)

.phony: run
