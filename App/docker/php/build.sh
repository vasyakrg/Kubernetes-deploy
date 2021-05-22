#!/bin/bash

docker buildx build --platform linux/amd64 --push -t vasyakrg/php-app .

# base
# docker build -t vasyakrg/php-db .
# docker push vasyakrg/php-db
