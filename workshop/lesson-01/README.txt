# lesson-01 Inventories

# MOTTO: Organize your content.

# TALK: Give a short intro about the infrastructure you work on.

# Ansible inventories allow you to work with groups of systems. 
# You can use a very simple INI format to declare wich host does what. 

In the example below there are 2 machines called 'sql' and 'web'. The example also has two groups in square brackets. In the subdirectory 'inventory' you will find a file that adds more details. 


[dbservers]
sql

[webservers]
web



# TODO 1. Open 'inventory/hosts' in your editor and look what it is about.
# TODO 2. Copy the inventory directory to the project directory.

# INFO: http://slides.com/racku/ansible-fundamentals#/5/2

TIPS:
* Start your model with the inventory
* Use .ini files for static inventories.
* Use separate inventories for stages like 'vagrant' and 'production'. 
* Use the [group:children] construct for grouping, and list hostnames once.
* Test things first in a 'vagrant' environment before running them in 'production'.
* Target an environment with the -i flag.
* If you have a system maintaining a list of systems in your infrastructure, use it for your dynamic inventory.
* Dynamic inventory files are executables, and must emit JSON.


# HINT: Ansible Tower can keep inventories and credentials securely.

To import an existing static inventory and the accompanying host and group vars into Tower, your inventory should be in a structure that looks similar to the following (don't use subdirs):

inventory/
    group_vars
        mygroup
    host_vars
        myhost
    hosts

The import can be done with this command below /var/lib/awx/projects/:

    tower-manage inventory_import --source=inventory --inventory-name="inventory"

