# Stable Packages

This repo holds stable packages for `vin`/ Vinyl Linux.

## Installation

```bash
$ git clone git@github.com:vinyl-linux/vin-packages-stable /etc/vinyl/pkg
$ sudo vin packages reload
$ sudo vin install whatever
```

## Usage

New packages/ versions can be added with:

```bash
$ provides=foo version=1.0.0 make
```

This will create the directory `foo/1.0.0`, and will insert a basic `manifest.toml` which will then need to be edited.

## Conventions

This repo follows the convention:

```
app/1.0.0/manifest.toml
   /2.0.0/manifest.toml
```

etc.

That is: each application lives in the top level, and under each application a directory for versions.
