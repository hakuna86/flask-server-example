.PHONY: clean python-packages install tests run all

clean:
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.log' -delete

install:
	pipenv install

tests:
	python manage.py test

run:
	python manage.py run

all: clean install tests run