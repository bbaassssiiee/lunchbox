all:
	./run_this_first.sh
	vagrant up --no-provision
	ansible-playbook site.yml
