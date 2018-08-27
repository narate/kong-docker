#!/bin/bash
docker run -d \
    --name cassandra \
    -v $(pwd)/cassandra_db:/var/lib/cassandra \
    cassandra

echo "Waiting for Cassandra"

STATUS="..."
while [ "$STATUS" != "running" ]
do
    STATUS=$(docker exec -it cassandra nodetool statusgossip | tr -d "\r\n")
    echo "Status = $STATUS"
    sleep 5
done

echo
echo "Starting KONG..."
docker ps | grep --color cassandra
sleep 10

docker run --rm \
    -e KONG_DATABASE=cassandra \
    -e KONG_CASSANDRA_CONTACT_POINTS=kong-database \
    --link cassandra:kong-database \
    kong:latest kong migrations up --vv

docker rm -f cassandra
echo 'done'