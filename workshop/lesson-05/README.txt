# lesson-05 Ad-hoc commands

# TALK: Verify if your group is logged on to the vm 'control'. All systems up?

# TODO 1. We are going to verify the ansible version, and update it if possible.
Enter these commands on the control host:

    ansible --version
    sudo yum update -y ansible


# TODO 2. Use an 'Ad-hoc command' to verify if your web server is up. 
If you enter this command in the command shell that is connected to the host name 'control', then you should see the output below:

    ansible web -m ping
 
--------------------------------------------------------------------------------
[vagrant@control project]$ ansible web -m ping
web | success >> {
    "changed": false, 
    "ping": "pong"
}
--------------------------------------------------------------------------------

The command 'ansible' works on a subset of your inventory ('all' in the above case), and each 'ansible' invocation can use one 'module' (that is what '-m' stands for). 

A 'module' can optionally accept 'arguments' (that is what the '-a' stands for). If you don't specify a module, then 'command' is the default.

# TODO 3. Check what other modules you can use.

    ansible-doc -l

# TODO 4. Verify the free memory on all hosts

    ansible all -m shell -a free

# TODO 5. Verify the disk space on /var of the web server.

    ansible web -a 'df -h /var'

