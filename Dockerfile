# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v0.7.1

RUN curl -sLO https://github.com/appscode/guard/releases/download/${VERSION}/guard-linux-amd64 && \
    chmod +x guard-linux-amd64 && mv guard-linux-amd64 /usr/local/bin/guard

ENTRYPOINT ["bash"]
