sudo apt update; sudo apt upgrade -y; sudo apt autoremove -y
sudo apt install -y docker.io; sudo docker version
sudo apt install -y apt-transport-https; curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
nano kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
sudo mv kubernetes.list /etc/apt/sources.list.d/kubernetes.list
sudo apt update; sudo apt install -y kubectl kubelet kubeadm
swapon -s
sudo swapoff -a
sudo kubeadm init --pod-network-cidr=10.244.33.0/16
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
wget https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
kubectl apply -f kube-flannel.yml
kubectl get pods --all-namespaces --watch
