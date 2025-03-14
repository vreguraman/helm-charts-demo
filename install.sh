Install Kind in UBUNTU

https://kind.sigs.k8s.io/docs/user/quick-start/#installation

# For AMD64 / x86_64
[ $(uname -m) = x86_64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.27.0/kind-linux-amd64
# For ARM64
[ $(uname -m) = aarch64 ] && curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.27.0/kind-linux-arm64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind

apt install docker.io

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


kind create cluster --name demo

#Argocd installation

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

kubectl edit secret -n argocd argocd-initial-admin-secret

root@ip-172-31-22-218:~# echo MlJTbFUwb1YyeWo0ZVVXUQ==|base64 -d
2RSlU0oV2yj4eUWQ

kubectl port-forward -n argocd svc/argocd-server 8080:80 --address=0.0.0.0

helm

https://get.helm.sh/helm-v3.17.2-linux-amd64.tar.gz
