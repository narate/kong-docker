#!/bin/bash
docker run -d \
    --name cassandra \
    -v $(pwd)/cassandra_db:/var/lib/cassandra \
    cassandra

echo "Waiting for Cassandra"
echo "Sleep for 35s..."
for i in {1..35}
do
    echo -n '.'
    sleep 1
done
echo "Starting KONG..."
docker ps | grep --color cassandra

docker run --rm \
    -e KONG_DATABASE=cassandra \
    -e KONG_CASSANDRA_CONTACT_POINTS=kong-database \
    --link cassandra:kong-database \
    kong:latest kong migrations up --vv

docker rm -f cassandra
echo 'done'