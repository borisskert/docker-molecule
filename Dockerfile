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
    pip3 install yamllint==1.25.0 \
                 molecule==3.1.4 \
                 ansible==2.10.1 \
                 ansible-lint==4.3.5 \
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
