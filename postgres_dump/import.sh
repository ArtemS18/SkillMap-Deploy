#!/bin/sh

if [ ! -d "$PGDATA/base" ]; then
    echo "Импортируем дамп..."
    psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -f /postgres_dump/dump.sql
fi

exec docker-entrypoint.sh "$@"
