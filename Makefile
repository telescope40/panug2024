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
	mkdir  /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/bgp/
	mkdir  /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/ospf/
	mkdir  /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/isis/
	cp netlab/project1/tests/bgp/frr.py /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/bgp/frr.py
	cp netlab/project1/tests/ospf/frr.py /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/ospf/frr.py
	cp netlab/project1/tests/isis/frr.py /usr/local/python/3.10.13/lib/python3.10/site-packages/netsim/validate/isis/frr.py
