#!/usr/bin/bash

# Run the program with some arguments or options
# We go to build, compile and run the program in the best way possible
# TODO: parse environments aws credentials 

# ENVIROMENT VARIABLES
name="kubectl-aws"
image_name="flaco0/kubectl-aws"
image_ver="0.0.1"
image="${image_name}:${image_ver}"

# Build the docker image

# Start the docker container
_start() {
    
    docker run --name "${name}" \
        --rm \
        --detach \
        -v "${HOME}:/root/.aws/credentials" \
        -v "$(pwd)/config/aws-kube-config.yaml:/root/.kube/config" \
        "${image}" \
        sleep infinity
}

# Stop the docker container
_stop() {

    docker stop "${name}" 2>/dev/null || echo "Container not running"
}

_build() {

    docker build -t "${image}" .
}

# Entrypoint
_run() {

    _stop
    _build
    _start
}

_run "$@"