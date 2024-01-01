include .env

.PHONY: dc-start dc-stop dc-start-local dc-build

dc-stop:
	@docker-compose stop;

dc-start: dc-stop dc-build
	@docker-compose up -d;

dc-start-local: dc-stop dc-build
	@docker-compose up

dc-build:
	@docker-compose build;
