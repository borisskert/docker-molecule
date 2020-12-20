# docker-molecule

This docker image is used for [my molecule Github Action](https://github.com/borisskert/molecule-action).

## Contents

This image is based on `alpine:3` and contains:

* python3
* molecule 3.2.1
* ansible 2.10.4
* ansible-lint 4.3.7
* yamllint 1.25.0
* molecule-docker - the molecule docker driver
* docker - cli and python package; used by the molecule docker driver.
* git - Used to checkout git repositories

## Usage

Due to docker entrypoint is `molecule` the usage is quite simple:

```shell script
$ docker run --rm borisskert/molecule:latest --version
molecule 3.2.1 using python 3.8 
    ansible:2.10.4
    delegated:3.2.1 from molecule
    docker:0.2.4 from molecule_docker
```

## Further links

* [borisskert/molecule-action](https://github.com/borisskert/molecule-action)
* [borisskert/molecule @ Docker Hub](https://hub.docker.com/repository/docker/borisskert/molecule)
