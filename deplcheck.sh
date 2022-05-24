# download roxctl from Central
curl -s -k -L -H "Authorization: Bearer ${ROX_API_TOKEN}" https://${CENTRAL}/api/cli/download/roxctl-linux --output roxctl
chmod +x roxctl

# execute the roxctl deploy check
./roxctl deployment check -e ${CENTRAL}:443 --file "${KUBEYAML}" --insecure-skip-tls-verify
