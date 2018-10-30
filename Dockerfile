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
  go \
  && \
  pip install --upgrade awscli && \
  apk -v --purge del py-pip && \
  go get -u github.com/tcnksm/ghr && \
  rm /var/cache/apk/*