FROM alpine:3.7
RUN apk -v --update add \
  python \
  py-pip \
  groff \
  less \
  mailcap \
  tar \
  gzip \
  ca-certificates \
  git \
  docker \
  && \
  pip install --upgrade awscli && \
  apk -v --purge del py-pip && \
  rm /var/cache/apk/*