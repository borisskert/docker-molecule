# docker-molecule

This docker image is used for [my molecule Github Action](https://github.com/borisskert/molecule-action).

## Contents

This image is based on `alpine:3` and contains:

* python3
* molecule 3.0.8
* ansible 2.9.12
* ansible-lint 4.3.1
* yamllint 1.24.2
* docker cli and python package - Used by molecule to use the docker driver.
* git - Used to checkout git repositories

## Usage

Due to docker entrypoint is `molecule` the usage is quite simple:

```shell script
$ docker run --rm borisskert/molecule:latest --version
molecule 3.0.8
   ansible==2.9.12 python==3.8
```

## Further links

* [borisskert/molecule-action](https://github.com/borisskert/molecule-action)
* [borisskert/molecule @ Docker Hub](https://hub.docker.com/repository/docker/borisskert/molecule)
