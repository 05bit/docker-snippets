FROM alpine:3.8

RUN apk --no-cache add \
  bash \
  build-base \
  ca-certificates \
  curl \
  postgresql \
  python3

RUN pip3 install coverme

COPY etc/periodic/ /etc/periodic/

RUN chmod -R +x /etc/periodic/

# COPY etc/backup.yml /etc/backup.yml
