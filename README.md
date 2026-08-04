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

Generally we are following [conventional commits][commits] when we apply
changes. That way we are able to generate proper changelogs for every release.
Please use always pull requests to integrate new functionalities or to fix
issues.

For the release process we are following [semantic versioning][semver] which
clearly indicates if a new version just resolves bugs, includes new features or
even includes breaking changes.

After installing the tools via `mise install` as described above set up the
pre-commit hooks so they run automatically on every commit:

```console
pre-commit install --hook-type pre-commit --hook-type commit-msg
```

> `pre-commit` is managed by mise and will be available after `mise install`.

If you have changed something on the source you should simply commit following
the mentioned conventions:

```console
git checkout -b feat/new-feature
git add --all
git commit -m 'feat: added awesome new feature'
git push --set-upstream origin feat/new-feature
```

After pushing your changes into the Git repository you should create a pull
request on GitHub. If the pull request have been merged and everything built
fine it will also create automatically a new release at least once a week.

## Authors

*  [Thomas Boerger](https://github.com/tboerger)

## License

MIT

## Copyright

```console
Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
```
[mise]: https://mise.jdx.dev/
[mise-install]: https://mise.jdx.dev/getting-started.html
[commits]: https://www.conventionalcommits.org/en/v1.0.0/
[semver]: https://semver.org/
[upstream]: https://github.com/vulcand/vulcand
[parent]: https://github.com/dockhippie/alpine
[dockerhub]: https://hub.docker.com/r/webhippie/vulcand/tags
[quayio]: https://quay.io/repository/webhippie/vulcand?tab=tags
[github]: https://github.com/dockhippie/vulcand
