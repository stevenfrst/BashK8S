sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y
sudo apt install -y docker.io; sudo docker version
sudo apt install -y apt-transport-https; curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
vim kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
sudo mv kubernetes.list /etc/apt/sources.list.d/kubernetes.list
sudo apt update; sudo apt install -y kubectl kubelet kubeadm
swapon -s
sudo swapoff -a
sudo kubeadm join --token x9w317.crp17krg58mbovgh 104.248.151.151:6443
 --discovery-token-ca-cert-hash sha256:805bb8a5cf6f93b40ee7cb4cca76b605cc9b1025fab1697c5a49a9da79d9db69
