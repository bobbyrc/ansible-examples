ping:
	ansible -i ./hardware/hosts ubuntu -m ping

run:
	ansible-playbook ./run_playbooks.yml -i ./hardware/hosts --ask-pass

update_packages:
	ansible-playbook ./playbooks/update_packages.yml -i ./hardware/hosts

qemu:
	ansible-playbook ./playbooks/install_qemu_guest_agent.yml -i ./hardware/hosts

docker:
	ansible-playbook ./playbooks/install_docker.yml -i ./hardware/hosts

ruby:
	ansible-playbook ./playbooks/install_ruby.yml -i ./hardware/hosts

brew:
	ansible-playbook ./playbooks/install_brew.yml -i ./hardware/hosts