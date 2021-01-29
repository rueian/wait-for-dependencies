# docker-wait-for-dependencies

Modified from [dadarek/docker-wait-for-dependencies](https://github.com/dadarek/docker-wait-for-dependencies) for Multi-arch

Also change the base image to busybox for smaller image size.

# Example

```yaml
version: '3'
services:
  pg:
    image: postgres:13-alpine
  mq:
    image: rabbitmq:3.8-alpine

  wait-deps:
    image: rueian/wait-for-dependencies
    depends_on:
      - pg
      - mq
    command: pg:5432 mq:5672
```

```sh
$ docker-compose run --rm wait-deps
```