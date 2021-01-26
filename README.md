# Stable Packages

This repo holds stable packages for `vin`/ Vinyl Linux.

## Installation

```bash
$ git clone git@github.com:vinyl-linux/vin-packages-stable /etc/vinyl/pkg
$ sudo vin packages reload
$ sudo vin install whatever
```

## Conventions

This repo follows the convention:

```
app/1.0.0/manifest.toml
   /2.0.0/manifest.toml
```

etc.

That is: each application lives in the top level, and under each application a directory for versions.
