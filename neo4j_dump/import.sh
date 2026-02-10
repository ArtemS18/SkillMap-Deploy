#!/bin/sh
if [ ! -f /data/databases/neo4j/neostore ]; then
    echo "Импортируем дамп..."
    neo4j-admin database load neo4j --from-path=/neo4j_dump --overwrite-destination=true
fi

exec neo4j console
