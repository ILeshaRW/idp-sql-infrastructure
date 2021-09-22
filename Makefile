.PHONY: all

SHELL=/bin/sh -e

.DEFAULT_GOAL := help

-include .env

ROOT_DIR:=$(dir $(abspath $(firstword $(MAKEFILE_LIST))))

env:
	@if [ ! -f $(ROOT_DIR)../.env ]; then \
		cp $(ROOT_DIR)../.env.example $(ROOT_DIR)../.env; \
	fi

	@if [ ! -f $(ROOT_DIR).env ]; then \
		ln -s $(ROOT_DIR)../.env $(ROOT_DIR).env; \
	fi

up: ## Запуск
	docker-compose up -d

down: ## Остановка всех контейнеров проекта
	docker-compose down

bash: ## Зайти в bash контейнера с php
	docker-compose exec php /bin/bash
nginx-bash:
	docker-compose exec nginx