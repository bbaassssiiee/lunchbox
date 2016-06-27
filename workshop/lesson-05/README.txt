# lesson-05 Ad-hoc commands

# TALK: Verify if your group is on the same page. All systems up?

# TODO 1. We are going to verify the ansible version, and update it if possible.
Enter these commands on the control host:

    ansible --version
    sudo yum update -y ansible


# TODO 2. Use an 'Ad-hoc command' to verify if your machines are up. 
If you enter this command in the command shell that is connected to the host name 'control', then you should see the output below:

    ansible all -m ping
 
--------------------------------------------------------------------------------
[vagrant@control lunchbox]$ ansible all -m ping
127.0.0.1 | success >> {
    "changed": false, 
    "ping": "pong"
}

sql | success >> {
    "changed": false, 
    "ping": "pong"
}

control | success >> {
    "changed": false, 
    "ping": "pong"
}

web | success >> {
    "changed": false, 
    "ping": "pong"
}
--------------------------------------------------------------------------------

# TODO 3. Verify the free memory on all hosts

    ansible all -m shell -a free

The command 'ansible' works on a subset of your inventory ('all' in the above case), and each 'ansible' invocation can use one 'module' (that is what '-m' stands for). A 'module' can optionally accept 'arguments' (that is what the '-a' stands for). If you don't specify a module, then 'command' is the default.

# TODO 4. Verify the disk space on /var of the web server.

    ansible web -a 'df -h /var'
