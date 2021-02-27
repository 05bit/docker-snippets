#!/bin/sh
source .env

psql -U ${POSTGRES_USER} \
    -c "ALTER ROLE $PG_USER WITH PASSWORD '$PG_PASSWORD'" \
    ${POSTGRES_DB}
