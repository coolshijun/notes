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

# THIS IS CRITICAL, swap must be off, otherwise kubelet will not start correctly!!!!

## systemctl enable kubelet

swapoff -a

systemctl daemon-reload

systemctl restart kubelet

## Decide network model before move on, we choose Calico

kubeadm init --pod-network-cidr=192.168.0.0/16

## To start using your cluster, you need to run (as a regular user):

sudo cp /etc/kubernetes/admin.conf $HOME/

sudo chown $(id -u):$(id -g) $HOME/admin.conf

export KUBECONFIG=$HOME/admin.conf

## Will see CoreDNS is pending
kubectl get pods --all-namespaces

## let the only master can run pod

kubectl taint nodes --all node-role.kubernetes.io/master-

## As normal user

## mkdir -p $HOME/.kube

## sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

## sudo chown $(id -u):$(id -g) $HOME/.kube/config


## make the anonymous user can access the api url

kubectl create clusterrolebinding cluster-system-anonymous --clusterrole=cluster-admin --user=system:anonymous
    



# Install K8s via Minikube
## Install Kubectl
## Install Minikube

## Start Minikube with Docker

sudo minikube start --vm-driver=none

## to make none as default driver

sudo minikube config set vm-driver none

