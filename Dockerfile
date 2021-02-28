FROM alpine:3

MAINTAINER borisskert <boris.skert@gmail.com>

RUN apk add --no-cache \
            --virtual \
                .build-deps \
                g++ \
                make \
                rust \
                cargo \
                musl-dev \
                python3-dev \
                libffi-dev \
                openssl-dev \
                && \
    apk add --no-cache --update \
                python3 \
                py3-pip \
                docker \
                git \
                bash \
                && \
    pip3 install --upgrade pip && \
    pip3 install \
                molecule==3.2.3 \
                ansible==2.10.6 \
                ansible-base==2.10.6 \
                ansible-lint==5.0.2 \
                yamllint==1.26.0 \
                docker \
                molecule-docker \
                && \
    apk del .build-deps \
                g++ \
                make \
                rust \
                cargo \
                musl-dev \
                python3-dev \
                libffi-dev \
                openssl-dev \
                ;

ENV DOCKER_WORKDIR /github/workspace

WORKDIR $DOCKER_WORKDIR

COPY /docker/root /

ENTRYPOINT ["/entrypoint.sh"]
