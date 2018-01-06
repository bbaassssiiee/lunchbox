all: install
	vagrant up --no-provision
	ansible-playbook site.yml
	./smoketest.sh
	ansible-playbook audit.yml

install:
## run this to download & install  dependencies for lunchbox
# Install roles used from galaxy.ansible.com and/or github.com
	ansible-galaxy install --force -r roles/requirements.yml
# Install python extensions for Ansible
	pip install --upgrade -r requirements.txt

audit:
	./audit.yml
