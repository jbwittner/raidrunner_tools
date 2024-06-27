DB_ROOT_PASSWORD := RaidRunnerRootPass2023
DB_PASSWORD := RaidRunnerPass2023
DB_USER := raidrunner_user
DB_DATABASE := raidrunner_db

.PHONY: restore-table
restore-table:
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) psql --username $(DB_USER) $(DB_DATABASE)" < sql/database.sql

.PHONY: restore-data
restore-data:
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) psql --username $(DB_USER) $(DB_DATABASE)" < sql/data.sql

.PHONY: backup-table
backup-table:
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) pg_dump --column-inserts --schema-only --clean --username $(DB_USER) $(DB_DATABASE)" > sql/database.sql

.PHONY: backup-data
backup-data:
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) pg_dump --column-inserts --data-only --username $(DB_USER) $(DB_DATABASE)" > sql/data.sql

.PHONY: backup-all
backup-all:
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) pg_dump --column-inserts --username $(DB_USER) $(DB_DATABASE)" > sql/all.sql

.PHONY: restore
restore: restore-table restore-data

.PHONY: backup
backup: backup-table backup-data backup-all

.PHONY: start
start:
	@docker compose -f compose.yaml up -d

.PHONY: down
down:
	@docker compose -f compose.yaml down -v

.PHONY: start-fetcher
start-fetcher:
	@docker compose -f compose.yaml -f compose.fetcher.yaml up -d