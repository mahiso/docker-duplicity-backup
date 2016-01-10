FROM alpine:3.3
MAINTAINER Maik Hinrichs <maik@mahiso.de>

RUN apk update && apk upgrade && \
    apk add coreutils bash duplicity git curl

RUN git clone https://github.com/mahiso/duplicity-backup.git

RUN curl https://storage.googleapis.com/pub/gsutil.tar.gz | tar -xz

ADD src/entrypoint.sh /
RUN chmod 500 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
