# vulcand

[![Docker Build](https://github.com/dockhippie/vulcand/actions/workflows/docker.yml/badge.svg)](https://github.com/dockhippie/vulcand/actions/workflows/docker.yml) [![GitHub Repo](https://img.shields.io/badge/github-repo-yellowgreen)](https://github.com/dockhippie/vulcand)

These are docker images for [Vulcand][upstream] running on our
[Alpine Linux image][parent].

## Versions

For the available versions please look at [Docker Hub][dockerhub] or
[Quay][quayio] or check the existing folders within the
[GitHub repository][github].

## Volumes

*  None

## Ports

*  8181
*  8182

## Available environment variables

```console
VULCAND_ALIASES =
VULCAND_CERTPATH =
VULCAND_DEBUG_JAEGER_TRACING = false
VULCAND_DEFAULT_LISTENER = true
VULCAND_ENABLE_JAEGER_TRACING = false
VULCAND_ENDPOINT_DIAL_TIMEOUT =
VULCAND_ENDPOINT_READ_TIMEOUT =
VULCAND_ENGINE = etcd
VULCAND_ETCD = http://etcd:2379
VULCAND_ETCD_API_VERSION = 3
VULCAND_ETCD_CA_FILE =
VULCAND_ETCD_CERT_FILE =
VULCAND_ETCD_CONSISTENCY = STRONG
VULCAND_ETCD_DEBUG = false
VULCAND_ETCD_ENABLE_TLS = false
VULCAND_ETCD_INSECURE_SKIP_VERIFY = false
VULCAND_ETCD_KEY = vulcand
VULCAND_ETCD_KEY_FILE =
VULCAND_ETCD_PASSWORD =
VULCAND_ETCD_SYNC_INTERVAL_SECONDS =
VULCAND_ETCD_USERNAME =
VULCAND_HEALTHCHECK_CODE = 200
VULCAND_HEALTHCHECK_URL = http://localhost:8182/v2/status
VULCAND_LOG_SEVERITY = warning
VULCAND_MEM_PROFILE_RATE =
VULCAND_SEAL_KEY =
VULCAND_SERVER_MAX_HEADER_BYTES =
VULCAND_SERVER_READ_TIMEOUT =
VULCAND_SERVER_WRITE_TIMEOUT =
VULCAND_STATSD_ADDR =
VULCAND_STATSD_PREFIX =
VULCAND_TRUST_FORWARD_HEADER = false
```

Extracted by the command: `grep -hE ': "\$\{(.*)\}"' latest/overlay/etc/entrypoint.d/*.sh | sed 's/: "\${//' | sed 's/:="/ = /' | sed 's/"}"$//' | sort | uniq`

## Inherited environment variables

*  [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```

[upstream]: https://github.com/vulcand/vulcand
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/vulcand/tags
[quayio]: https://quay.io/repository/webhippie/vulcand?tab=tags
[github]: https://github.com/dockhippie/vulcand
