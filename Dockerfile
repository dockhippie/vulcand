FROM webhippie/alpine:latest
MAINTAINER Thomas Boerger <thomas@webhippie.de>

ENV GOPATH /usr

ENV VULCAND_PATH github.com/mailgun/vulcand
ENV VULCAND_REPO https://github.com/tboerger/vulcand.git
ENV VULCAND_BRANCH feature/etcd-ssl

RUN mkdir -p /docker/libexec
ADD libexec /docker/libexec
RUN ln -sf /docker/libexec/manage /usr/bin/manage

RUN apk-install ca-certificates build-base git go && \
  git clone -b ${VULCAND_BRANCH} ${VULCAND_REPO} ${GOPATH}/src/${VULCAND_PATH} && \
  go install ${VULCAND_PATH} && \
  go install ${VULCAND_PATH}/vctl && \
  go install ${VULCAND_PATH}/vbundle && \
  apk del build-base git go && \
  rm -r /usr/src/*

EXPOSE 8181 8182

WORKDIR /docker
ENTRYPOINT ["manage"]
CMD ["start"]
