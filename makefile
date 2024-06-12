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
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) pg_dump --schema-only --clean --username $(DB_USER) $(DB_DATABASE)" > sql/database.sql

.PHONY: backup-data
backup-data:
	@docker exec -i raidrunner_databases /bin/bash -c "PGPASSWORD=$(DB_PASSWORD) pg_dump --data-only --username $(DB_USER) $(DB_DATABASE)" > sql/data.sql

.PHONY: restore
restore: restore-table restore-data

.PHONY: backup
backup: backup-table backup-data

.PHONY: start
start:
	@docker compose -f compose.yaml up -d

.PHONY: down
down:
	@docker compose -f compose.yaml down -v