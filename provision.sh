#!/bin/sh

# 準備するやろ
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

apt-get update
apt-get upgrade
apt-get install -y apt-transport-https git bridge-utils arping
apt-get install -y lxc-docker

gpasswd -a vagrant docker
service docker restart

/vagrant/es/build.sh
/vagrant/es/run.sh

