ZONE=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/zone" -H "Metadat
a-Flavor: Google")
ZONE=${ZONE##*/}
export ZONE=$(echo $ZONE | sed 's/\-[^-]*$//')
export PROJECT_ID=$(curl -s "http://metadata.google.internal/computeMetadata/v1/project/proje
ct-id" -H "Metadata-Flavor: Google")
export BUCKET_NAME="tfsecreponame"
export KMS_TF="tfkmsreponame"
export KMS_KR_TF="tfkmskeychainname"
