# lunchbox is a training about Ansible.

The lessons are in the directory 'workshop', follow them to get an introduction, and a working setup.

# lunchbox is an example of an Ansible directory tree using best practices.

# To launch the site you need VMs in virtualbox, to prepare

    vagrant init dockpack/centos6 


# To run the provisioner
    ansible-playbook --ask-vault-pass site.yml

  "The vault password is 'password'."

# To run the security audit against the DISA STIG benchmark
		ansible-playbook audit.yml

# IMPORTING EXISTING INVENTORY FILES AND HOST/GROUP VARS INTO TOWER
===================================================================
To import an existing static inventory and the accompanying host
and group vars into Tower, your inventory should be in a structure
that looks similar to the following:

inventory/
|-- group_vars
|   `-- mygroup
|-- host_vars
|   `-- myhost
`-- hosts

To import these hosts and vars, run the tower-manage command:
cd /var/lib/awx/projects/_5__lunchbox/
tower-manage inventory_import --source=inventory/ \
   --inventory-name="My Tower Inventory"

