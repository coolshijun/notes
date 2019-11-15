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

## Decide network model before move on

sysctl net.bridge.bridge-nf-call-iptables=1

ufw disable


kubeadm init --pod-network-cidr=10.244.0.0/16

kubectl get pods --all-namespaces

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

## let the only master can run pod

kubectl taint nodes --all node-role.kubernetes.io/master-



## As normal user

mkdir -p $HOME/.kube

sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config

sudo chown $(id -u):$(id -g) $HOME/.kube/config


## As root user

export KUBECONFIG=/etc/kubernetes/admin.conf

## Join cluster using the output of kubeadm init

kubeadm join 10.66.136.183:6443 --token qc46ux.f4hgbf6sl6ba5r6r \
    --discovery-token-ca-cert-hash sha256:5d3a1bfd90b9be7894accea9f49a5e9511fe0d2f862c6f8a4d1034f336ba3aa2
    



# Install K8s via Minikube
## Install Kubectl
## Install Minikube

## Start Minikube with Docker

sudo minikube start --vm-driver=none

## to make none as default driver

sudo minikube config set vm-driver none

