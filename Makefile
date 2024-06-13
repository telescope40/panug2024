install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:


format:
	black *.py


lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py


refactor: format lint

deploy:
    pyenv install 3.9.7 &&\
    pyenv global 3.9.7 &&\
	python3.9 -m venv panug &&\
	source venv/bin/activate

