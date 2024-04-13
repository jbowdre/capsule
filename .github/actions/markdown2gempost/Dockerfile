FROM golang:1.22 AS go-builder

WORKDIR /app

RUN git clone https://github.com/jbowdre/md2gmi.git

WORKDIR /app/md2gmi

RUN go mod download && CGO_ENABLED=0 GOOS=linux go build -o /md2gmi

FROM ubuntu:22.04 AS release

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
  dos2unix=7.4.2-2 \
  uuid-runtime=2.37.2-4ubuntu3.4 \
  && rm -rf /var/lib/apt/lists/*

COPY --from=go-builder /md2gmi /usr/local/bin/md2gmi
COPY convert.sh /usr/local/bin/convert.sh
RUN chmod +x /usr/local/bin/convert.sh

WORKDIR /github/workspace

ENTRYPOINT ["/usr/local/bin/convert.sh"]