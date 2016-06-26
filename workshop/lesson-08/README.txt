# lesson-08 Variables

MOTTO: Express differences as variables.
Ansible playbooks can refer to variables defined in the YAML file under the vars: section. In the example below we check the Ansible website, but the task can also check another url. If we define url: "http://python.org", then that value is used where you see the reference {{ url }}.

  vars:                        
    - url: "https://www.ansible.com"  

  tasks:                       
    - name: 'check network'    
      uri: url={{ url }}     
           method=HEAD
           return_content=no
           status_code=200
           timeout=60
           follow_redirects=all

# TODO 1. Copy the playbook 'install.yml' into the project directory.


# TIP: Ansible uses '{{ mustache }}' like variable expansion.

# TODO 2. In the 'project' directory make a directory 'host_vars'.

Host variables are collected from the 'inventory', from fact gathering (setup runs), and the directory 'host_vars'. Host variables are "facts" about a server that contains info such as:
- Hostname
- IP addresses
- Date and Time information
- CPU, Disk, Memory
- Hardware Architecture
- Operating System Information

# TODO 3. In the 'project' directory make a directory 'group_vars'.

Group variables (group_vars) are facts that apply to a grouping of servers. These come from the 'inventory', and the directory 'group_vars'.

The name of the files in the group_vars directory line up with the group name being targeted. "all" is a special keyword to apply facts to all hosts.

# TODO 2. In the directory 'group_vars' create a text file 'all', define the ansible_user: ansible

# TODO 3. In the directory 'group_vars' create a text file 'vagrant', define the ansible_user: vagrant

# TIP: variables files can be encrypted with a password.

# GOTO: ../lesson-09/README.txt
