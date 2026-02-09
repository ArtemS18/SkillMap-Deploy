#!/bin/sh
if [ ! -f /data/databases/neo4j/neostore ]; then
    echo "Импортируем дамп..."
    neo4j-admin load --database=neo4j --from=/neo4j_dump/neo4j.dump --force
fi

exec neo4j console
