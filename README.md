KONG Docker Deployment (docker-compse)
---

# WARNING !

**KONG 2.0.0+ Only**

## Just run

```
time ./start.sh
```

# Deploy step by step

## Deploy kong-database

```
docker-compose up -d kong-database
```

## Run kong-database migrations

```
docker-compose up migrations
```

## Start Kong

```
docker-compose up -d kong
```

**Now Kong is Running**
- Kong Admin API http://127.0.0.1:8001
- Kong Proxy http://127.0.0.1
