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
                                docker \
                                git \
                                bash && \
    pip3 install --upgrade pip && \
    pip3 install yamllint==1.23.0 \
                 molecule==3.0.4 \
                 ansible==2.9.9 \
                 ansible-lint==4.2.0 \
                 docker && \
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
