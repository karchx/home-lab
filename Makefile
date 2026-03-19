.DEFAULT_GOAL := help
SHELL := /bin/bash

.PHONY: apply-crds
apply-crds: ## Apply Custom Resource Definitions (CRDs)
	kubectl apply -f bootstrap/00-crds/

.PHONY: apply-namespaces
apply-namespaces: ## Apply namespaces
	kubectl apply -f bootstrap/01-namespaces/

.PHONY: platform-up
platform-up: ## Deploy platform components
	helmfile -f helmfile.yaml -l namespace=platform sync

.PHONY: platform-down
platform-down: ## Remove platform components
	helmfile -f helmfile.yaml -l namespace=platform destroy

# ----- PORT FORWARDING -----
.PHONY: pf-postgres
pf-postgres: ## Port forward Postgres
	kubectl port-forward -n platform svc/postgres-postgresql 5432:5432


.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2}'

