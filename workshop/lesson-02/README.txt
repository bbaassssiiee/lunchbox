# lesson-02 Vagrant

# MOTTO: Magic happens when you put your files in the right locations.

Vagrant
A good practice in modern development is to create an environment locally, that mimics the production environment as close as possible. If you run Windows or OSX that means running VirtualBox or VMWare as a 'host' and Linux as a 'guest'. Production environments often are virtualized, and/or, containerized.  Hashicorp released an excellent tool to manipulate VM's using the command line: Vagrant.


# TODO 1. Download and install Vagrant from: https://www.vagrantup.com/downloads.html

# TODO 2. Then copy the file 'Vagrantfile' in this directory to the 'project' directory.

# TODO 3. Type this to add our secure base box to your VirtualBox, it is re-usable:

      vagrant box add vagrant box add --force dockpack/centos6 dockpack_centos.box

 TODO 3. cd to the 'project' directory using the command shell/Terminal
# TYPE:   vagrant up

This will start the virtual machines used in this workshop on your laptop.

# TALK: Offer help to members in your group, you all need a good setup.

# TIP: The project folder "transponds" to the Linux machine.

# INFO: http://docs.vagrantup.com/v2/getting-started/index.html

