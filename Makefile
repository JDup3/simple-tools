DOCKER_HOME :=
project_dir := $(shell pwd)

define run
	docker build -t $2 -f $2/Dockerfile .
	docker run --rm \
		-v $(project_dir):$(DOCKER_HOME)/app \
		$1 $2 $3 $4
endef

define template
	cp -nr $1/template$2/* .
endef

BASH := /usr/bin/env bash
ASH := /bin/ash

PYTHON_DIR := python
PYTHON := /usr/bin/env python3

.PHONY: template-python
template-python:
	@$(call template,$(PYTHON_DIR),)

.PHONY: run-python
run-python:
	@$(call run,-it,$(PYTHON_DIR),$(ASH))

.PHONY: run-python-shell
run-python-shell:
	@$(call run,-it,$(PYTHON_DIR),$(PYTHON))


NODE_DIR := node
VUE := npm run dev

.PHONY: template-node
template-node:
	@$(call template,$(NODE_DIR),.node)

.PHONY: template-vue
template-vue:
	@$(call template,$(NODE_DIR),.vue)

.PHONY: run-node
run-node:
	@$(call run,-it,$(NODE_DIR),$(BASH))

.PHONY: run-vue
run-vue:
	@$(call run,-it,$(NODE_DIR),$(VUE))


RUST_DIR := rust

.PHONY: template-rust
template-rust:
	@$(call template,$(RUST_DIR),)

.PHONY: run-rust
run-rust:
	@$(call run,-it,$(RUST_DIR),$(BASH))


GO_DIR := go

.PHONY: template-go
template-go:
	@$(call template,$(GO_DIR),)

.PHONY: run-go
run-go:
	@$(call run,-it,$(GO_DIR),$(BASH))