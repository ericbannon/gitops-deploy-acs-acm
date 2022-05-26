# download roxtl from Central
curl -s -k -L -H "Authorization: Bearer ${ROX_API_TOKEN}" https://${CENTRAL}/api/cli/download/roxctl-linux --output roxctl
chmod +x roxctl

# image check 1
./roxctl image check -e ${CENTRAL}:443 --image "${IMAGE}" --insecure-skip-tls-verify
