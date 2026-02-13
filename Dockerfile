FROM alpine:3.18

RUN apk add --no-cache curl tar

RUN curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    chmod +x /usr/local/bin/hugo

RUN adduser -D -u 1000 hugo

USER 1000

WORKDIR /src

ENTRYPOINT ["hugo"]

