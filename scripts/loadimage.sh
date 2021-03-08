#!/bin/bash

# 导入镜像
# kubernetes
docker load -i ../images/kube-controller-manager-v1.19.3.tar
docker load -i ../images/kube-apiserver-v1.19.3.tar
docker load -i ../images/kube-scheduler-v1.19.3.tar
docker load -i ../images/kube-proxy-v1.19.3.tar
docker load -i ../images/coredns-1.7.0.tar
docker load -i ../images/etcd-3.4.13-0.tar
docker load -i ../images/pause-3.2.tar

docker tag 38dca1cbd231 172.24.97.209:5000/ingress-nginx-controller:v0.43.0
docker tag cdef7632a242 172.24.97.209:5000/kube-proxy:v1.19.3
docker tag aaefbfa906bd 172.24.97.209:5000/kube-scheduler:v1.19.3
docker tag 9b60aca1d818 172.24.97.209:5000/kube-controller-manager:v1.19.3
docker tag a301be0cd44b 172.24.97.209:5000/kube-apiserver:v1.19.3
docker tag 0369cf4303ff 172.24.97.209:5000/etcd:3.4.13-0
docker tag bfe3a36ebd25 172.24.97.209:5000/coredns:1.7.0
docker tag 80d28bedfe5d 172.24.97.209:5000/pause:3.2

#calico 网络插件
sudo docker load -i ../images/calico-cni-v3.17.2.tar
sudo docker load -i ../images/calico-pod2daemon-flexvol-v3.17.2.tar
sudo docker load -i ../images/calico-node-v3.17.2.tar
sudo docker load -i ../images/calico-kube-controllers-v3.17.2.tar
sudo docker load -i ../images/calico-typha-v3.17.2.tar
sudo docker load -i ../images/operator-v1.13.4.tar

# nginx ingress controller
docker load -i ../images/ingress-nginx-controller-v0.43.0.tar

# kubernetes dashboard
sudo docker load -i ../images/kubernetesui-dashboard-v2.1.0.tar
sudo docker load -i ../images/kubernetesui-metrics-scraper-v1.0.6.tar

# kuboard
sudo docker load -i ../images/kuboard-latest.tar
sudo docker load -i ../images/kuboard-metrics-server-amd64-v0.3.6.tar
