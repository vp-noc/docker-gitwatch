# docker-gitwatch ![License][license-img]

1. [Overview](#overview)
2. [Description](#description)
3. [Usage](#usage)
4. [Limitations](#limitations)
5. [Development](#development)
6. [Miscellaneous](#miscellaneous)

## Overview

Gitwatch is a bash script that use inotify to watch a file or a folder and
commit to a git repo.

[github.com/gitwatch/gitwatch][gitwatch-url]

## Description

Docker images of [gitwatch][gitwatch-url].

## Usage

```bash
docker build \
  --rm \
  --tag vpgrp/gitwatch \
  .

docker run \
  -e EMAIL=root@localhost \
  -e NAME=root \
  -e 'SSH_PRIVATE_KEY=-----BEGIN OPENSSH PRIVATE KEY-----
[...]
-----END OPENSSH PRIVATE KEY-----' \
  -v data:/mnt/watching \
  vpgrp/gitwatch \
  -b master -r origin /mnt/watching
```

## Limitations

Gitwatch will only detect change in a `docker volume` with a compatible driver
due to inotify.

## Development

Please read carefully CONTRIBUTING.md before making a merge request.

## Miscellaneous

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

[license-img]: https://img.shields.io/badge/license-Apache-blue.svg
[gitwatch-url]: https://github.com/gitwatch/gitwatch
