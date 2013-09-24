# Salt config
This repo contains the SaltStack configurtion to quickly provision a server to
my liking.

Start by setting up a new VM with vagrant or a new machine.

    # install salt
    curl -L http://bootstrap.saltstack.org | sudo sh -s -- git develop

    # call salt from within the VM
    sudo salt-call --local state.highstate -l debug

If using a `Vagrantfile`, mount the salt config files under `/srv/salt`

    config.vm.synced_folder "salt/", "/srv/salt"
