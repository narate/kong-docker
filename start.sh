#!/bin/bash

docker-compose up -d kong-database

STATUS="..."
while [ "$STATUS" != "running" ]
do
    STATUS=$(docker-compose exec kong-database nodetool statusgossip |  tr -d "\r\n")
    echo "kong-database status = $STATUS"
    sleep 5
done

docker-compose up -d
docker-compose logs -f
