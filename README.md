KONG Docker Deployment (docker-compse)
---

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

## postman admin api
(https://documenter.getpostman.com/view/10587735/SzS7QS2c?version=latest#b5c37285-0e71-411a-b44d-f06fea8e6b24)
