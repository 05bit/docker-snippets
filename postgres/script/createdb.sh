#!/bin/sh
source .env
container_name="${USER}_postgres_1"
owner=${1}
new_db=${2}

docker exec ${container_name} createdb \
    -U ${POSTGRES_USER} \
    -O ${owner} -E utf-8 ${new_db}
