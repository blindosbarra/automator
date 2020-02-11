#!/bin/sh
echo "Updating"
apt-get update
echo "Installing dependencies"
apt-get install -y unzip wget git
echo "get metadata list"
META_LIST=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/" -H "Metadata-Flavor: Google")
for meta in $META_LIST
do
  if [ $meta = "repo_bucket" ]; then
     repo_bucket=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/repo_bucket" -H "Metadata-Flavor: Google")
     echo "$repo_bucket"
  fi
  if [ $meta = "tf_version" ]; then
     tf_version=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/attributes/tf_version" -H "Metadata-Flavor: Google")
     echo "$tf_version"
  fi
done
echo "Downloading terraform"
gsutil cp gs://${repo_bucket}/terraform/terraform_${tf_version}_linux_amd64.zip .
echo "Installing terraform"
unzip  terraform_${tf_version}_linux_amd64.zip
chmod +x terraform
mv terraform /usr/local/bin/
echo "Installing berglas"
gsutil cp gs://${repo_bucket}/berglas/berglas .
chmod +x berglas
mv berglas /usr/local/bin/
echo "Done"
