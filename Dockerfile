FROM alpine:3

MAINTAINER borisskert <boris.skert@gmail.com>

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
                 molecule==3.2.2 \
                 ansible==2.10.4 \
                 ansible-base==2.10.4 \
                 ansible-lint==4.3.7 \
                 yamllint==1.25.0 \
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
