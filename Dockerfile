FROM quay.io/vektorcloud/base:3.9

RUN VERSION="1.1.2" && \
  PACKAGE="traefik_linux-amd64" && \
  apk add --no-cache openssl && \
  wget "https://github.com/containous/traefik/releases/download/v$VERSION/$PACKAGE" -O /usr/bin/traefik && \  
  chmod +x /usr/bin/traefik && \
  apk del openssl

CMD ["/usr/bin/traefik"]
