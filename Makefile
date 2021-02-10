provides ?= "vin"
version ?= "0.0.0-r0"

default: $(provides)/$(version)/manifest.toml

$(provides)/$(version):
	mkdir -p $@

$(provides)/$(version)/manifest.toml: .template/manifest.toml $(provides)/$(version)
	.template/render $< > $@
