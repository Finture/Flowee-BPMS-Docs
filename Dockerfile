# Etap 1: Budowanie Hugo
FROM alpine:3.18 AS builder

RUN apk add --no-cache curl tar

RUN curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    chmod +x /usr/local/bin/hugo

WORKDIR /docs
COPY . .

RUN hugo --baseURL="/docs/"

# Etap 2: Serwer statyczny NGINX
FROM nginx:alpine
COPY --from=builder /docs/public /usr/share/nginx/html/docs