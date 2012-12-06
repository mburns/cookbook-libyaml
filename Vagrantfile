require 'berkshelf/vagrant'

Vagrant::Config.run do |config|
  config.vm.host_name = "bla-berkshelf"
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.network :hostonly, "33.33.33.10"
  config.ssh.max_tries = 40
  config.ssh.timeout   = 120

  config.vm.provision :chef_solo do |chef|
    chef.add_recipe("libyaml")
  end
end
