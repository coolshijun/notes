# Docker for Mac



curl http://localhost connection refused

curl http://docker.for.mac.localhost will work (but deprecated), refer to https://stackoverflow.com/questions/44014698/docker-failed-to-connect-to-localhost-port-4000-connection-refused
should use host.docker.internal 
https://dev.to/bufferings/access-host-from-a-docker-container-4099

ping docker.for.mac.localhost 
192.168.65.2

ping localhost
127.0.0.1

https://dev.to/bufferings/access-host-from-a-docker-container-4099


# Install docker ce on Ubuntu

## remove old version
apt-get remove docker docker-engine docker.io containerd runc

apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
    
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu disco stable"

apt-get update

apt-get install docker-ce docker-ce-cli containerd.io

docker run hello-world
