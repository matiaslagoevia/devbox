#!/bin/sh

docker run -it \
    --rm \
    --name dbox \
    -v ./.config:/root/.config/ \
    -v ~/.gitconfig:/root/.gitconfig:ro \
    -v ~/.ssh:/root/.ssh:ro \
    mle/dbox:latest