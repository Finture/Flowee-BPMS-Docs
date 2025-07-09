FROM alpine:3.18

RUN apk add --no-cache curl tar

RUN curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    chmod +x /usr/local/bin/hugo

WORKDIR /src

ENTRYPOINT ["hugo"]

# docker build --platform=linux/amd64 -t hugo .
# docker run --rm -v "$PWD:/src" hugo --baseURL=/docs

scp public/* httpfiles@10.255.100.5:/var/www/html/bpms/docs/