#install helm
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3
chmod 700 get_helm.sh
export HELM_INSTALL_DIR=.
export PATH=$PATH:./
./get_helm.sh --no-sudo

# download roxctl from Central
curl -k -L -H "Authorization: Bearer ${ROX_API_TOKEN}" https://${CENTRAL}/api/cli/download/roxctl-linux --output roxctl
chmod +x roxctl

# create the helm yaml
./helm repo add stable https://charts.helm.sh/stable
./helm repo update
./helm template jenkins stable/jenkins > kube.yaml


# execute the roxctl deploy check
./roxctl deployment check -e ${CENTRAL}:443 --file kube.yaml --insecure-skip-tls-verify
