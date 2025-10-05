#!/bin/sh

cp ~/ca-cert/*.crt certs/

docker build --platform linux/arm64 -t mle/dbox .
