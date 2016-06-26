# lesson-10 Content Organization

# MOTTO: Magic happens when you put your files in the right locations.

# TODO 1. Login to 'control', cd to 'project' and run 'site.yml'
# TODO 2. The example role was not made for RHEL6, fix everything.

# TIP: Follow the recommended directory layout

ansible.cfg            # parameters that affect running ansible
inventory/             # an inventory defines an environment
    hosts              # defines the hosts in an inventory
    group_vars/        # here we assign variables to particular groups
        all            # global variables for all groups
        dbservers/     # directory for dbservers group
            secrets    # -- encrypted variables for dbservers group
            vars       # -- plaintext variables for dbservers group
        group2         # plaintext variables for group2
    host_vars/         # here we assign variables to particular hosts
        hostname1      # if systems need specific variables, put them here
        hostname2      # “”
site.yml               # master playbook
webservers.yml         # playbook for webserver tier
dbservers.yml          # playbooke for database tier
galaxy_roles/          # roles imported from galaxy
roles/                 # in-house roles
    common/            # this hierarchy represents a “role"
        tasks/         # 'tasks' contains the actions that implement role
            main.yml   # -- main.yml could include other files if warranted
        handlers/      # 'handlers' can be notified by tasks on change
            main.yml   # -- handlers file often defines service actions
        templates/     # files for use with the template module
            hosts.j2   # -- Jinja templates, should end in .j2
        files/         # 'files' is the start for relative paths
            static.txt # -- file for use with the copy module           
            script.sh  # -- script for use with the script module


# TALK: Discuss how to implement a web server with a database.
