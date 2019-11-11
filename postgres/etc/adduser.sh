#!/bin/sh
source .env
container_name="${USER}_postgres"
new_user=${1}

docker exec ${container_name} createuser \
    -U ${POSTGRES_USER} \
    -dRS ${new_user}
