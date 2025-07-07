FROM alpine:3.18

# Instalacja zależności
RUN sed -i 's|https://|http://|g' /etc/apk/repositories && \
    apk update && \
    apk add --no-cache curl git ca-certificates bash


# Instalacja Hugo 0.54
RUN curl -L -o /tmp/hugo.tar.gz https://github.com/gohugoio/hugo/releases/download/v0.54.0/hugo_0.54.0_Linux-64bit.tar.gz && \
    tar -xzf /tmp/hugo.tar.gz -C /usr/local/bin hugo && \
    chmod +x /usr/local/bin/hugo && \
    rm /tmp/hugo.tar.gz

# Katalog roboczy
WORKDIR /docs

# Kopiowanie źródeł dokumentacji (z zewnątrz)
COPY . .

# Otwórz port Hugo
EXPOSE 80

# Uruchom dokumentację
CMD ["hugo", "server", "--baseURL=http://modeler.flowee.local/docs/", "--bind=0.0.0.0", "--port=80"]