FROM alpine:3

MAINTAINER borisskert <boris.skert@gmail.com>

ENV CRYPTOGRAPHY_DONT_BUILD_RUST 1

RUN apk add --no-cache \
            --virtual .build-deps \
                      g++ \
                      make \
                      python3-dev \
                      libffi-dev \
                      openssl-dev && \
    apk add --no-cache --update python3 \
                                py3-pip \
                                docker \
                                git \
                                bash && \
    pip3 install --upgrade pip && \
    pip3 install \
                 molecule==3.2.3 \
                 ansible==2.10.5 \
                 ansible-base==2.10.5 \
                 ansible-lint==5.0.1 \
                 yamllint==1.26.0 \
                 docker \
                 molecule-docker && \
    apk del .build-deps \
            g++ \
            make \
            python3-dev \
            libffi-dev \
            openssl-dev

ENV DOCKER_WORKDIR /github/workspace

WORKDIR $DOCKER_WORKDIR

COPY /docker/root /

ENTRYPOINT ["/entrypoint.sh"]
