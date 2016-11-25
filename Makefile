all: install
	vagrant up --no-provision
	ansible-playbook vagrant.yml
	./smoketest.sh
	ansible-playbook audit.yml

install:
## run this to download & install  dependencies for lunchbox
# Install roles used from galaxy.ansible.com and/or github.com
	ansible-galaxy install --force -r roles/requirements.yml
# Install python extensions for Ansible
	pip install --upgrade -r requirements.txt

# login to 'control' with 'vagrant ssh', then run 'make setup'
setup:
	@cp pki/vagrant.rsa ~/.ssh/id_rsa
	@chmod 600 ~/.ssh/id_rsa

provision:
	vagrant up --no-provision
	
clean:
	rm -f results.xml
	rm -f rhel-stig-report.html
	
realclean: clean
	rm -f U_RedHat_6_V1R8_STIG_SCAP_1-1_Benchmark.zip
	rm -rf ansible-tmp-*
	
audit: clean
	./audit.yml
