# lunchbox is a training about Ansible.

# This is an example of an Ansible directory tree using best practices.

# To launch the site you need 2 VMs in virtualbox, to prepare

    vagrant init dockpack/centos6 


# To run the provisioner
    ansible-playbook --ask-vault-pass vagrant.yml

  "The vault password is 'password'."

# To run the security audit against the DISA STIG benchmark
		ansible-playbook audit.yml