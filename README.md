# [COYANG's blog](https://coyang.top/)

## Building the docs

If you are on EPEL 8 or Fedora, the first thing you will need is to install
mkdocs, with the following command :

```bash
sudo yum install -y mkdocs
```

Then you need to run mkdocs from the root of that repository:

```bash
mkdocs build
```

The result will be in the `site/` subdirectory, in HTML.

## Building the docs in Docker

Included is a Makefile and a Dockerfile, which enables you to easily build the
docs inside Docker without installing any dependencies on your system.

Simply run the following command to compile the docs:

```sh
make
```

This Makefile recipe builds a Docker image containing the dependencies required
and runs `mkdocs` inside the built image, taking care to run the container as
the current `uid` and `gid` so that your user has ownership of the results in
the `./site` directory.
