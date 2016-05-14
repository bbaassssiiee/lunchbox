all: install
	vagrant up --no-provision
	ansible-playbook vagrant.yml
	./smoketest.sh
	ansible-playbook audit.yml

install:
	./run_this_first.sh

provision:
	vagrant up --no-provision
