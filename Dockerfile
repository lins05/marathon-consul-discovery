FROM google/golang

ADD . /gopath/src/github.com/lins05/marathon-consul-discovery
WORKDIR /gopath/src/github.com/lins05/marathon-consul-discovery

RUN go get ./... && go build ./...

EXPOSE 8090
ENTRYPOINT ["./marathon-consul-discovery"]
