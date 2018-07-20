FROM mhart/alpine-node:8.11
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
  openrc \
  && \
  pip install --upgrade awscli && \
  apk -v --purge del py-pip && \
  rm /var/cache/apk/*