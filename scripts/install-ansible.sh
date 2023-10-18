#!/usr/bin/env sh
apt install ansible -y
git config --global user.email "adresse@gmail.com"
git config --global user.name "Prénom NOM"
git config --global core.sshCommand 'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
git clone https://github.com/tarradmac/my-vagrant-box.git
ansible-playbook /home/vagrant/my-vagrant-box/provision.yml
