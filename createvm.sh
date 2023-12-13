/usr/bin/env bash
echo $1 > token
VM_NAME=instance-1
gcloud compute instances create $VM_NAME  --project=vikramadityanagilla-prj --zone=us-east1-b --machine-type=e2-medium  --network-interface=network=labnetwork,subnet=uscentralsubnet --tags=github-test --access-token-file=token-file
