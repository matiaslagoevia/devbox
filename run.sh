#!/bin/sh

docker run -it \
    --rm \
    --name dbox \
    -v ~/code/devbox/.config:/root/.config/ \
    mle/dbox:latest