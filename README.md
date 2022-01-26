# sitebaseimage

This is a docker image that is based on ossobv/uwsgi-python for siteProject. It contains uwsgi, python3, django packages.

You could use it with `docker push imtzz/uwsgi-python:latest`.

[Docker Hub Link](https://hub.docker.com/repository/docker/imtzz/uwsgi-python)

# Supported tags and respective Dockerfile links

- `v1`, `latest`  [Dockerfile](https://github.com/tzzs/sitebaseimage/blob/master/Dockerfile)

# Example usage

```dockerfile
FROM ossobv/uwsgi-python

WORKDIR /web

COPY . /web

RUN apt-get update \
    && apt-get upgrade -y

EXPOSE 9000

```

# NOTE

If you want to use uwsgi with python. You have to install uwsgi with pip. You could install it with the follow command.

```shell
pip install uwsgi
```
