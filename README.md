# docker-molecule

This docker image is used for [my molecule Github Action](https://github.com/borisskert/molecule-action).

## Contents

This image is based on `alpine:3` and contains:

* python3
* molecule 3.0.4
* ansible 2.9.9
* ansible-lint 4.2.0
* yamllint 1.23.0
* docker cli and python package - Used by molecule to use the docker driver.
* git - Used to checkout git repositories

## Usage

Due to docker entrypoint is `molecule` the usage is quite simple:

```shell script
$ docker run --rm borisskert/molecule:latest --version
molecule 3.0.4
   ansible==2.9.9 python==3.8
```
