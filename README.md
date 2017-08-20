# docker_prune - cleanup scripts for Docker resources

# EXAMPLE

```console
$ source docker_prune.sh

$ docker_prune
deae20916ea2
dae613b9a1a4
ee1b769d1ad4
5f751c1dd45c
7d328f25b286
f0b3ee52bac1
e39419713476
baa0c544db73
```

# INSTALL

Download [docker_prune.sh](https://raw.githubusercontent.com/mcandre/docker_prune/master/lib/docker_prune.sh) and place into `$HOME`:

```console
$ wget -O $HOME/docker_prune.sh https://raw.githubusercontent.com/mcandre/docker_prune/master/lib/docker_prune.sh
```

Then configure your `$HOME/.bash_profile` or similar shell configuration to use docker_prune:

```bash
# docker_prune
# See https://raw.githubusercontent.com/mcandre/docker_prune/master/lib/docker_prune.sh
. $HOME/docker_prune.sh
```

Then update your shell:

```console
$ source $HOME/.bash_profile
```

# REQUIREMENTS

## Optional

* [shfmt](https://github.com/mvdan/sh) (e.g. `go get github.com/mvdan/sh/cmd/shfmt)
* [bashate](https://pypi.python.org/pypi/bashate/0.5.1)
* [shlint](https://rubygems.org/gems/shlint)
* [checkbashisms](https://sourceforge.net/projects/checkbaskisms/)
* [ShellCheck](https://hackage.haskell.org/package/ShellCheck)
* [stank](https://github.com/mcandre/stank) (e.g. `go get github.com/mcandre/stank/...`)
* [editorconfig-cli](https://github.com/amyboyd/editorconfig-cli) (e.g. `go get github.com/amyboyd/editorconfig-cli`)
* [flcl](https://github.com/mcandre/flcl) (e.g. `go get github.com/mcandre/flcl/...`)
