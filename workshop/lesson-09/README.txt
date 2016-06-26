# lesson-09 Roles

MOTTO: Keep it simple.

TIP: Separate top level playbooks by role
Roles are ways of automatically loading certain vars_files, tasks, and handlers based on a known file structure. Grouping content by roles also allows easy sharing of roles with other users.

Your database playbook at the highest level will show the plays for each group of hosts involved. The play can have your custom pre_tasks and post_tasks, and for the rest, this is implemented as separate hosts.

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
    - sfromm.postgresql

  tasks: []

  post_tasks:
    - include: dbservers/post_tasks.yml


SLIDES: There are slides explaining this topic.

TODO 1. Copy everything from this folder to the project folder.
TODO 2. login to 'control', cd to 'project' and run 'install.yml'

HINT: Galaxy already has thousands of roles.

TIP: roles_path in ansible.cfg separates your own roles and Galaxy roles.

INFO: http://docs.ansible.com/ansible/playbooks_roles.html#roles


GOTO: ../lesson-10/README.txt
# 