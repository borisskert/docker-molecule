⚠⚠⚠ **The code of this project has been moved to [borisskert/molecule-action](https://github.com/borisskert/molecule-action)** ⚠⚠⚠

# docker-molecule

This docker image is used for [my molecule Github Action](https://github.com/borisskert/molecule-action).

## Contents

This image is based on `alpine:3` and contains:

* python3
* molecule 3.3.0
* ansible 2.10.8
* ansible-lint 5.0.8
* yamllint 1.26.1
* molecule-docker - the molecule docker driver
* docker - cli and python package; used by the molecule docker driver.
* git - Used to checkout git repositories

## Usage

Due to docker entrypoint is `molecule` the usage is quite simple:

```shell script
$ docker run --rm borisskert/molecule:latest --version
molecule 3.3.0 using python 3.8 
    ansible:2.10.8
    delegated:3.3.0 from molecule
    docker:0.2.4 from molecule_docker
```

## Further links

* [borisskert/molecule-action](https://github.com/borisskert/molecule-action)
* [borisskert/molecule @ Docker Hub](https://hub.docker.com/repository/docker/borisskert/molecule)
