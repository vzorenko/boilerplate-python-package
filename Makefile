install:
	poetry install

test:
	poetry run pytest python_package tests

test-coverage:
	poetry run pytest --cov=python_package --cov-report xml tests

lint:
	poetry run flake8 python_package

selfcheck:
	poetry check

check: selfcheck test lint

build: check
	poetry build

.PHONY: install test lint selfcheck check build
