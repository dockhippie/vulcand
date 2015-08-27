FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV VULCAND_PATH github.com/mailgun/vulcand
ENV VULCAND_REPO https://github.com/tboerger/vulcand.git
ENV VULCAND_BRANCH feature/cmd-params

ENV GOPATH /usr

RUN apk update && \
  apk add \
    build-base \
    git \
    go && \
  git clone -b ${VULCAND_BRANCH} ${VULCAND_REPO} ${GOPATH}/src/${VULCAND_PATH} && \
  go get ${VULCAND_PATH}/... && \
  go install ${VULCAND_PATH} && \
  go install ${VULCAND_PATH}/vctl && \
  go install ${VULCAND_PATH}/vbundle && \
  apk del build-base git go && \
  rm -rf /var/cache/apk/* && \
  rm -r /usr/src/*

ADD rootfs /
EXPOSE 8181 8182

WORKDIR /root
CMD ["/usr/bin/s6-svscan", "/etc/s6"]
