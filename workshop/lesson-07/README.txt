# lesson-07 YAML
# Yet Another Markup Language

# YAML Uses a colon ':' between the name and value of variables.
# YAML Uses a hyphen '-' to start each element on a list. 

---
- src: hostclick.tomcat
- src: bbaassssiiee.el_postgres_role
- src: https://github.com/elastic/ansible-elasticsearch.git


In Ansible you can write a list of tasks using YAML. YAML uses spacing just like Python, i.e. formating is important.

# TIP: Add a blank line between tasks.

  White space helps readability
  Indent by two spaces
  # Comments start with a hyphen

# TIP: Three hyphens at the start --- are good for recognition of YAML

# TIP: In short-hand , you can drop action: if you add ':' to the module.
# TIP: Add a blank line before vars, roles, tasks, handlers.

# TODO 1. Copy the directory 'roles' into the project directory.
# INFO: 

