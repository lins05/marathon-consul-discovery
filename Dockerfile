FROM google/golang

ADD . /gopath/src/github.com/chrono/marathon-consul-discovery
WORKDIR /gopath/src/github.com/chrono/marathon-consul-discovery

RUN go get ./... && go build ./...

EXPOSE 8090
ENTRYPOINT ["./marathon-consul-discovery"]
