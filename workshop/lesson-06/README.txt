# lesson-06 Tasks

# A task is a discrete action that is a declaration about the state of a system.

Example Tasks:
* Package should be installed
* Service should be running

In Ansible you can write a list of tasks. We start by naming our list, and we also create a good name for our tasks. So each task consists of a name and an action. A hyphen marks an element on the list, and names end with a colon, like name: or tasks: or action:.

  tasks:

  - name: install httpd
   	action: yum name=httpd state=latest
	
  - name: start httpd
  	action: service name=httpd state=started


# TIP: Add a blank line between tasks.

# TALK: Remember that an action is a declaration state? How does it achieve this? 

# HINT: Tasks are part of a play.
# HINT: Plays combine in a playbook

# TODO 1. Copy the playbook file webservers.yml to the project directory.
# TODO 2. Play it from the control host

  ansible-playbook webservers.yml

# TODO 3. Verify the web page at http://192.168.20.20/

# TIP: In short-hand notation, you can drop action: if you add ':' to the module.

GOTO: ../lesson-07/README.txt
#