# lesson-04 SSH Key pairs

Ansible uses SSH to connect, and SSH requires a cryptographic key pair. Treat the private key like your credit card, don't show it to everybody. The public key can be copied wherever you need access.

TIPS:

* Don't login as root
* Don't use service account interactively
* Settle on become_method: sudo/su/doas

Vagrant has a liberal way to deal with key pairs, and that makes projects sharable anonymously, but also insecure. We use this method for education only.

# TODO 1. Copy the file 'vagrant.rsa' to the project directory, 

    cp vagrant.rsa ../project

# TODO 2. Log into the 'control' host: vagrant ssh

# TODO 3: Change to the project directory:

  cd project

# TODO 4. Make sure that the file and the project directory are only readable by you.

  chmod 700 . && chmod 600 vagrant.rsa

# TALK: The default SSH setup can be improved. How?

GOTO: ../lesson-05/README.txt
#