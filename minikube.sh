# kubernetes CLI

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.19.0/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version --client


# docker
sudo apt-get update
sudo apt-get install \ apt-transport-https \ ca-certificates \curl \gnupg-agent \ software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/debian \$(lsb_release -cs) \stable nightly"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo apt install docker-compose


base=https://github.com/docker/machine/releases/download/v0.16.0 &&
curl -L $base/docker-machine-$(uname -s)-$(uname -m) >/tmp/docker-machine &&
sudo mv /tmp/docker-machine /usr/local/bin/docker-machine &&
chmod +x /usr/local/bin/docker-machine
  
  
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb



minikube config set vm-driver docker
minikube config set cpus 4
minikube config set memory 4096

sudo usermod -aG docker [Add your user name] && newgrp docker
minikube start
