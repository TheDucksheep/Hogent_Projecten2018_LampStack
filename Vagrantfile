Vagrant.configure("2") do |config|

  # OS settings

    config.vm.box = "generic/fedora27"
    config.vm.box_check_update = false

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # We have to use a dhcp assigned IP adress to be able to acces the webserver from the HOST
  # Nodig op schoolnetwerk
   config.vm.network "private_network", type: "dhcp"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # Dit volstaat in een thuisnetwerk,
    config.vm.network "public_network"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
    config.vm.provider "virtualbox" do |vb|

  #   # Set the name of the VM
      vb.name= "Opdracht 02 - LAMP"
  #   # Customize the amount of memory on the VM:
      vb.memory = "4096"
  end
  
  # Provisioning: script below gets executed automatically after loading the Vagrant box
  # SHELL
       config.vm.provision "file", source: "lampStack.sh", destination: "/home/vagrant/lampStack.sh"
       config.vm.provision :shell, :path => "vagrantConfig.sh", :keep_color => true
		
end
