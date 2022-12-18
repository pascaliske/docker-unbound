# `pascaliske/docker-unbound`

> Small Alpine based image for unbound - the validating and caching recursive DNS resolver.

[![Docker Image Version (tag latest semver)](https://img.shields.io/docker/v/pascaliske/unbound/latest?style=flat-square)](https://hub.docker.com/r/pascaliske/unbound) [![Docker Image Size (tag)](https://img.shields.io/docker/image-size/pascaliske/unbound/latest?style=flat-square)](https://hub.docker.com/r/pascaliske/unbound) [![Docker Pulls](https://img.shields.io/docker/pulls/pascaliske/unbound?style=flat-square)](https://hub.docker.com/r/pascaliske/unbound) [![GitHub Tag](https://img.shields.io/github/v/tag/pascaliske/docker-unbound?style=flat-square)](https://github.com/pascaliske/docker-unbound) [![Build Status](https://img.shields.io/github/workflow/status/pascaliske/docker-unbound/Image/master?label=build&style=flat-square)](https://github.com/pascaliske/docker-unbound/actions) [![GitHub Last Commit](https://img.shields.io/github/last-commit/pascaliske/docker-unbound?style=flat-square)](https://github.com/pascaliske/docker-unbound) [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](https://opensource.org/licenses/MIT) [![Awesome Badges](https://img.shields.io/badge/badges-awesome-green.svg?style=flat-square)](https://github.com/Naereen/badges)

## Image

| Registry                  | Image                                                                                               |
| ------------------------- | --------------------------------------------------------------------------------------------------- |
| GitHub Container Registry | [`ghcr.io/pascaliske/unbound`](https://github.com/pascaliske/docker-unbound/pkgs/container/unbound) |
| Docker Hub                | [`pascaliske/unbound`](https://hub.docker.com/r/pascaliske/unbound)                                 |

The following platforms are available for this image:

```bash
$ docker run --rm mplatform/mquery ghcr.io/pascaliske/unbound:latest
Image: ghcr.io/pascaliske/unbound:latest
 * Manifest List: Yes
 * Supported platforms:
   - linux/amd64
   - linux/arm/v7
   - linux/arm64
```

## Usage

To use this image pull it from one of the following registries:

```bash
# github container registry
docker pull ghcr.io/pascaliske/unbound

# docker hub
docker pull pascaliske/unbound
```

## Kubernetes

If you want to use this tool inside of a Kubernetes cluster [check out my ready to deploy Helm chart](https://charts.pascaliske.dev/charts/unbound/)!

## License

[MIT](LICENSE.md) – © 2022 [Pascal Iske](https://pascaliske.dev)
