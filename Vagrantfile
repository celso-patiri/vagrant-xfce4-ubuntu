# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The '2' in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/jammy64'

  config.vm.box_check_update = false

  config.vm.provider 'virtualbox' do |vb|
    vb.gui = true
    vb.name = 'ubuntu-dev'
    vb.memory = 3072
    vb.cpus = 4

    vb.customize ['modifyvm', :id, '--vram', '256']
    vb.customize ['modifyvm', :id, '--accelerate2dvideo', 'off']
    vb.customize ['modifyvm', :id, '--accelerate3d', 'on']
    vb.customize ['modifyvm', :id, '--clipboard', 'bidirectional']
    vb.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    vb.customize ['modifyvm', :id, '--natdnsproxy1', 'on']
  end

  ### Network settings ###

  # config.vm.host_name = 'vagrant.xfce4.ubuntu.com'

  # Create a forwarded port mapping which allows access to a specific port
  # This will enable public access to the opened port, use host_ip: '127.0.0.1' to disable public access
  config.vm.network 'forwarded_port', guest: 22, host: 2222, id: 'ssh', auto_correct: true
  config.vm.network 'forwarded_port', guest: 80, host: 2280

  # Create a private network, which allows host-only access to the machine using a specific IP.
  config.vm.network 'private_network', ip: '192.168.56.10'

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on your network.
  # config.vm.network 'public_network'

  # Default synced folder
  # config.vm.synced_folder '.', '/vagrant'

  ### Provisioning ###

  # Copy private SSH key to VM for Git and other tools
  config.vm.provision 'file', source: "#{ENV['HOME']}/.ssh/id_rsa", destination: '~/.ssh/id_rsa'

  # Fonts
  config.vm.provision 'shell', inline: 'chmod 777 /usr/share'
  config.vm.provision 'file', source: 'share/fonts', destination: '/usr/share/fonts'

  # Run shell script provisions
  config.vm.provision 'shell', path: 'provisions/base.sh', name: 'base.sh'
  config.vm.provision 'shell', path: 'provisions/deb.sh', name: 'deb.sh'
  config.vm.provision 'shell', path: 'provisions/git.sh', name: 'git.sh'
  config.vm.provision 'shell', path: 'provisions/xfce4.sh', name: 'xfce4.sh'

  config.vm.provision 'shell', path: 'provisions/local.sh', name: 'local.sh', privileged: false
  config.vm.provision 'shell', path: 'provisions/fzf.sh', name: 'fzf.sh', privileged: false
  config.vm.provision 'shell', path: 'provisions/go.sh', name: 'go.sh', privileged: false
  config.vm.provision 'shell', path: 'provisions/nvm.sh', name: 'nvm.sh', privileged: false
  config.vm.provision 'shell', path: 'provisions/docker.sh', name: 'docker.sh'
  config.vm.provision 'shell', path: 'provisions/dotfiles.sh', name: 'dotfiles.sh', privileged: false
  config.vm.provision 'shell', path: 'provisions/chrome.sh', name: 'chrome.sh'
  config.vm.provision 'shell', path: 'provisions/rust.sh', name: 'rust.sh', privileged: false
  config.vm.provision 'shell', path: 'provisions/neovim.sh', name: 'neovim.sh', privileged: false
end
