#!/bin/sh

docker run -it \
    --rm \
    --name dbox \
    --platform linux/arm64 \
    -v ./.config:/root/.config/ \
    -v ./.tools:/root/.tools/ \
    -v ~/.gitconfig:/root/.gitconfig:ro \
    -v ~/.ssh:/root/.ssh:ro \
    -v $REPOS_DIR:/root/code \
    mle/dbox:latest
