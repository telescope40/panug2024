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
    #virtualenv netlab/project1
	# Activate the python virtual environment
	# source netlab/project1/./bin/activate
	netlab install -y ubuntu ansible containerlab
	#apt install -y graphviz
