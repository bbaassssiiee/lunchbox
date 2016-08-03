# lesson-04 SSH Key pairs

Ansible uses SSH to connect, and SSH requires a cryptographic key pair. Treat the private key like your credit card, don't show it to everybody. The public key can be copied wherever you need access. 

TIPS:

* Don't login as root
* Don't use service account interactively
* Settle on become_method: sudo/su/doas

Vagrant has a liberal way to deal with key pairs, and that makes projects sharable anonymously, but also insecure. We use this method for education only.

# TODO 1. Take a look at the files 'vagrant.rsa' and 'vagrant.pub'.

# TODO 2. Log into the 'control' host: vagrant ssh

# TALK: The default SSH setup can be improved. How?

# DEMO: There is a demo about SSH, ask for it.
