.PHONY: copy-env
copy-env:
	cp -n .env.example .env | true

.PHONY: run-infrastructure
run-infrastructure: copy-env
	docker compose --file compose.yaml up

.PHONY: shutdown-infrastructure
shutdown-infrastructure:
	docker compose --file compose.yaml down