# Vulcand

These are docker images for Vulcand running on an
[Alpine Linux container](https://registry.hub.docker.com/u/webhippie/alpine/).
The cuurrent container size is ```46.48 MB```


## Usage

```
docker run -ti --name vulcand webhippie/vulcand:latest bash

# Execute this for further available commands
docker exec -ti vulcand manage help
```


## Versions

* [latest](https://github.com/dockhippie/vulcand/tree/master)
  available as ```webhippie/vulcand:latest``` at
  [Docker Hub](https://registry.hub.docker.com/u/webhippie/vulcand/)


## Available environment variables

```bash
ENV VULCAND_API_INTERFACE
ENV VULCAND_CERTPATH # As string or filename
ENV VULCAND_ENDPOINT_DIALTIMEOUT 5s
ENV VULCAND_ENDPOINT_READTIMEOUT 50s
ENV VULCAND_ETCD
ENV VULCAND_ETCD_CAFILE # As string or filename
ENV VULCAND_ETCD_CERTFILE # As string or filename
ENV VULCAND_ETCD_KEYFILE # As string or filename
ENV VULCAND_ETCD_CONSISTENCY STRONG
ENV VULCAND_ETCD_KEY vulcand
ENV VULCAND_INTERFACE
ENV VULCAND_LOG console
ENV VULCAND_LOG_SEVERITY WARN
ENV VULCAND_READTIMEOUT 1m0s
ENV VULCAND_SEALKEY
ENV VULCAND_SERVER_MAXHEADERBYTES 1048576
ENV VULCAND_SERVER_READTIMEOUT 1m0s
ENV VULCAND_SERVER_WRITETIMEOUT 1m0s
ENV VULCAND_STATSD_ADDR
ENV VULCAND_STATSD_PREFIX
```


## Available management commands

```bash
Usage: manage <command> [<args>]

Some useful manage commands are:
   bash      Start a shell on container
   commands  List all available sub commands
   pid       Return the process id
   prepare   Prepare environment
   reload    Reload the main process
   running   Check if main process is running
   start     Start the main process
   stop      Stop the main process
```


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

Copyright (c) 2015 Thomas Boerger <http://www.webhippie.de>
