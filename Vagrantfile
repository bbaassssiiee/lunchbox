# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox"
  config.vm.provider "vmware_fusion"
  config.vm.box = "dockpack/centos6"
  config.vm.box_url = "https://atlas.hashicorp.com/dockpack/boxes/centos6"
  config.vm.box_check_update = true
  config.ssh.forward_agent = false
  config.ssh.insert_key = false

  # Timeouts
  config.vm.boot_timeout = 900
  config.vm.graceful_halt_timeout=100

  # If ansible is in your path it will provision from your HOST machine
  # If ansible is not found in the path it will be instaled in the VM and provisioned from there
  config.vm.provision "ansible" do |ansible|
    ansible.inventory_path = "inventory.ini"
    ansible.playbook = "site.yml"
    ansible.raw_arguments = "--ask-vault-pass"
    ansible.verbose = "vvv"
    ansible.host_key_checking = "false"
  end

  #config.vm.synced_folder "./", "/vagrant", :nfs => true, :mount_options => ['vers=3','noatime','actimeo=2', 'tcp', 'fsc']

  config.vm.define :sql, autostart: true do |sql_config|
    sql_config.vm.network "private_network", ip: "192.168.20.22", :netmask => "255.255.255.0",  auto_config: true
    sql_config.vm.network "forwarded_port", id: 'ssh', guest: 22, host: 2223, auto_correct: true

    sql_config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natnet1", "172.16.1/24"]
      vb.gui = false
      vb.name = "sql"
    end
  end

  config.vm.define :web,  primary: true do |web_config|

    # This host only network for use of Apache as a webdav
    web_config.vm.network "private_network", ip: "192.168.20.20", :netmask => "255.255.255.0",  auto_config: true
    # To access this host use: 'vagrant ssh dev'
    web_config.vm.network "forwarded_port", id: 'ssh', guest: 22, host: 2222, auto_correct: true
    web_config.vm.provider "virtualbox" do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024", "--natnet1", "172.16.1/24"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"  ]
      vb.name = "web"
      vb.gui = false
    end

  end

end


