all: install
	vagrant up --no-provision
	ansible-playbook vagrant.yml
	./smoketest.sh
	ansible-playbook audit.yml

install:
	./run_this_first.sh

provision:
	vagrant up --no-provision
	
clean:
	rm -f results.xml
	rm -f rhel-stig-report.html
	
realclean: clean
	rm -f U_RedHat_6_V1R8_STIG_SCAP_1-1_Benchmark.zip
	
audit: clean
	./audit.yml