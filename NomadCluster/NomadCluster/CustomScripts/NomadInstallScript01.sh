# Docker install For Ubuntu 14.04 LTS
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates -y
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c 'echo "" > /etc/apt/sources.list.d/docker.list'
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" > /etc/apt/sources.list.d/docker.list'
sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get update
sudo apt-get install linux-image-extra-$(uname -r) -y
sudo apt-get install apparmor -y
sudo apt-get update
sudo apt-get install docker-engine -y
sudo service docker start

# Nomad install
sudo apt-get update
sudo apt-get install -y unzip curl wget vim
echo Fetching Nomad...
cd /tmp/
curl -sSL https://releases.hashicorp.com/nomad/0.2.3/nomad_0.2.3_linux_amd64.zip -o nomad.zip

echo Installing Nomad...
unzip nomad.zip
sudo chmod +x nomad
sudo mv nomad /usr/bin/nomad
sudo mkdir -p /etc/nomad.d
sudo chmod a+w /etc/nomad.d