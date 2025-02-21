SHELL := /bin/bash

build: ## Build the project using cargo
	cargo build

lint: ## Lint the project using clippy
	cargo clippy

format: ## Format the project using rustfmt
	cargo fmt