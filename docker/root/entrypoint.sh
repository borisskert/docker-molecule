#!/bin/bash
set -e

cd "${GITHUB_REPOSITORY:-$DOCKER_WORKDIR}"

molecule $*
