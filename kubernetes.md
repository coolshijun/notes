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

### Perminately disable swap
### /etc/fstab, comment swap line

systemctl daemon-reload

### Kubelet will to start correclty before kubeadm init!!
systemctl restart kubelet

## Decide network model before move on, we choose canal

kubeadm init --pod-network-cidr=10.244.0.0/16

## Run as root, you need to add below line, otherwise kubectl will thow error

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl apply -f https://docs.projectcalico.org/v3.8/manifests/canal.yaml


## To start using your cluster, you need to run (as a regular user):

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config


## Will see CoreDNS is pending
kubectl get pods --all-namespaces

## let the only master can run pod

kubectl taint nodes --all node-role.kubernetes.io/master-

## make the anonymous user can access the api url

kubectl create clusterrolebinding cluster-system-anonymous --clusterrole=cluster-admin --user=system:anonymous
    


## CrashLoopbackOff, possibly can be resovlved by below line
sudo sysctl net.ipv4.conf.all.rp_filter=0



kubectl proxy --address 0.0.0.0 --accept-hosts '.*'

# Install K8s via Minikube
## Install Kubectl
## Install Minikube

## Start Minikube with Docker

sudo minikube start --vm-driver=none

## to make none as default driver

sudo minikube config set vm-driver none

