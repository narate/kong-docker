# KONG Docker Deployment with docker-compse
---

Kong API Gateway deployment with docker and docker-compose


## Status

This deployment is production ready.

## Quick start

```
time ./start.sh
```

## Deploy Kong step by step

### Deploy kong-database

```
docker-compose up -d kong-database
```

### Run kong-database migrations

```
docker-compose up migrations
```

### Start Kong

```
docker-compose up -d kong
```

**Now Kong is running**

- Kong Admin API http://127.0.0.1:8001
- Kong Proxy http://127.0.0.1

### Start Konga

```
docker-compose up -d mongo konga
```

**Now Konga is running**

- Konga http://127.0.0.1:1337

### Acccess Konga securely

If you deploy Kong on remote host we can access konga via ssh tunnel

```
ssh -L 1337:127.0.0.1:1337 username@kong.example.com
```

Now you can access konga on [localhost](http://localhost:1337)

### Postman Admin API
[Kong CE Admin API V2.0](https://documenter.getpostman.com/view/10587735/SzS7QS2c?version=latest#b5c37285-0e71-411a-b44d-f06fea8e6b24)

