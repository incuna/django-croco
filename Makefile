SHELL := /bin/bash

help:
	@echo "Usage:"
	@echo "    make release    | Release to pypi."
	@echo "    make test       | Run the tests."

release:
	python setup.py register sdist upload

test:
	@coverage run test_project/manage.py test TODO_PACKAGE_NAME --verbosity=${VERBOSITY}
	@flake8 .
	@DJANGO_SETTINGS_MODULE=test_project.settings coverage report