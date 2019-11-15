# Install K8s via Kubeadm

sudo su -

apt-get update && apt-get install -y apt-transport-https curl

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -

cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list

deb https://apt.kubernetes.io/ kubernetes-xenial main

EOF

apt-get update

apt-get install -y kubelet kubeadm kubectl

apt-mark hold kubelet kubeadm kubectl

swapoff -a

systemctl daemon-reload

systemctl restart kubelet





# Install K8s via Minikube
## Install Kubectl
## Install Minikube

## Start Minikube with Docker

sudo minikube start --vm-driver=none

## to make none as default driver

sudo minikube config set vm-driver none

