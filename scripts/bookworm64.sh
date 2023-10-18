#!/usr/bin/env sh
echo I am provisioning...
apt update -y
apt install python3-pip git netselect-apt -y
netselect-apt -n -c fr
sed -i -e 's/^deb-src/#deb-src/g; /security/s/^# //; /security/s/stable\/updates/bookworm-security/' sources.list
mv /home/vagrant/sources.list /etc/apt/sources.list
apt update -y
apt dist-upgrade -y
