# lesson-09 Roles

MOTTO: Keep it simple. Don't do everything yourself.

Grouping content by 'roles' allows easy sharing of roles with other users.
Roles are ways of automatically loading certain files, tasks, vars_files, and handlers based on a known file structure. 

The playbook 'dbservers.yml' playbook shows that a play can have custom pre_tasks and post_tasks, and for the rest, be implemented as standard roles. 
I made a simple role for NTP, and a larger one for SSH. And, uploaded a role to Galaxy.

---

- name: 'dbservers.yml'
  hosts: dbservers
  become: yes
  gather_facts: True

  
  pre_tasks:
    - include: dbservers/pre_tasks.yml

  roles:
    - ntp
		- ssh
    - bbaassssiiee.el_postgres_role

  tasks: []

  post_tasks:
    - include: dbservers/post_tasks.yml


HINT: 
SLIDES: There are slides explaining roles in more depth.

TODO 1. Copy everything from this folder to the project folder.

TODO 2. login to 'control', cd to 'project' and run 'install.yml'

    ansible-playbook install.yml
    
Look what happened! You downloaded roles from galaxy. Galaxy already has thousands of roles. 
    
TODO 3. Change the value of ask_vault_pass in the file ansible.cfg to True.

INFO: http://docs.ansible.com/ansible/playbooks_roles.html#roles
TIP: roles_path in ansible.cfg separates your own roles and Galaxy roles.

