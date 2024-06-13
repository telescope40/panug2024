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
	echo "deb [trusted=yes] https://apt.fury.io/netdevops/ /" &&\
	su tee -a /etc/apt/sources.list.d/netdevops.list -y &&\
	su apt update && sudo apt install containerlab -y &&\
	su apt-get install containerd -y &&\
	su apt remove moby-tini -y
