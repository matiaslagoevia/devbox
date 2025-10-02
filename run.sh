#!/bin/sh

docker run -it \
    --rm \
    --name dbox \
    -v ~/code/devbox/.config:/root/.config/ \
    -v ~/.gitconfig:/root/.gitconfig:ro \
    -v ~/.ssh:/root/.ssh:ro \
    mle/dbox:latest