#!/bin/bash
set -e

export PY_COLORS=1
export ANSIBLE_FORCE_COLOR=1

cd "${GITHUB_REPOSITORY:-$DOCKER_WORKDIR}"

molecule "$*"
