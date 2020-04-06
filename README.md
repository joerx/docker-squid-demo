# Docker Squid Demo

Demo docker-compose stack to test squid configs.

## Networking

This docker-compose stack will try to create 2 networks with the following CIDR ranges: `172.28.0.0/16` and `172.29.0.0/16`. Make sure these are available or modify the `networks` section in `docker-compose.yml` accordingly.

## Usage

Bring up the stack:

```sb
docker-compose up
```

Container `shell_1` should be able to access some part of the internet through the proxy:

```sh
$ docker-compose exec shell_1 bash
# curl https://github.com
200

# curl https://google.com
403
```

While `shell_2` should not:

```sh
$ docker-compose exec shell_2 bash
# curl https://github.com
403

# curl https://google.com
403
```
