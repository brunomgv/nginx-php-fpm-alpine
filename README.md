[![Docker Hub; brunovilalba/nginx-php-fpm-alpine](https://img.shields.io/badge/docker%20hub-brunovilalba%2Fnginx--php--fpm--alpine-blue.svg?&logo=docker&style=for-the-badge)](https://hub.docker.com/r/brunovilalba/nginx-php-fpm-alpine/) [![](https://badges.weareopensource.me/docker/pulls/brunovilalba/nginx-php-fpm-alpine?style=for-the-badge)](https://hub.docker.com/r/brunovilalba/nginx-php-fpm-alpine/) [![](https://img.shields.io/docker/image-size/brunovilalba/nginx-php-fpm-alpine/latest?style=for-the-badge)](https://hub.docker.com/r/brunovilalba/nginx-php-fpm-alpine/) [![nginx 1.22.0](https://img.shields.io/badge/nginx-1.22.0-brightgreen.svg?&logo=nginx&logoColor=white&style=for-the-badge)](https://nginx.org/en/CHANGES) [![php 7.4.30](https://img.shields.io/badge/php--fpm-7.4.30-blue.svg?&logo=php&logoColor=white&style=for-the-badge)](https://secure.php.net/releases/7_4_30.php) [![License MIT](https://img.shields.io/badge/license-MIT-blue.svg?&style=for-the-badge)](https://github.com/brunovilalba/nginx-php-fpm-alpine/blob/master/LICENSE)

## Introduction
This is a Dockerfile to build a alpine based container image running nginx and php-fpm 7.4.30.

### Versioning
| Docker Tag | GitHub Release | Nginx Version | PHP Version
|-----|-------|-----|--------|--------|------|
| latest | master Branch |1.22.0 | 7.4.30 |

## Building from source
To build from source you need to clone the git repo and run docker build:
```
$ git clone https://github.com/brunomgv/nginx-php-fpm-alpine.git
$ cd nginx-php-fpm-alpine
```

followed by
```
$ docker build -t nginx-php-fpm-alpine:latest .
```

## Pulling from Docker Hub
```
$ docker pull brunovilalba/nginx-php-fpm-alpine:latest
```

## Running
To run the container:
```
$ sudo docker run -d brunovilalba/nginx-php-fpm-alpine:latest
```

Default web root:
```
/var/www/html
```