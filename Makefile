install:
	pip install -r requirements.txt

test:

format:
	black *.py

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py

refactor: format lint

deploy: