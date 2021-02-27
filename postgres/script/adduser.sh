#!/bin/sh
source .env
container_name="${USER}_postgres_1"
new_user=${1}

docker exec ${container_name} createuser \
    -U ${POSTGRES_USER} \
    -dRS ${new_user}
