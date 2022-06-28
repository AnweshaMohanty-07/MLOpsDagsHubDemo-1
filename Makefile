setup:
	python3 -m venv ~/.MLOpsDagsHubDemo
	#source ~/.MLOpsDagsHubDemo/bin/activate

install:
	pip install --upgrade pip &&\
	  pip install -r requirements.txt

check:
	python3 -m pytest -vv -cov=hellotest ./test/test.py

mlmodel:
	python3 ./model/Skln_ElasticNet.py

configure:
	make setup
	make install

validate:	
	make check
	make mlmodel
