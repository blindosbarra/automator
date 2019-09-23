ZONE=$(curl -s "http://metadata.google.internal/computeMetadata/v1/instance/zone" -H "Metadata-Flavor: Google")
ZONE=${ZONE##*/}
export ZONE=$(echo $ZONE | sed 's/\-[^-]*$//')
export PROJECT_ID=$(curl -s "http://metadata.google.internal/computeMetadata/v1/project/project-id" -H "Metadata-Flavor: Google")
export BUCKET_NAME="tfsecreponametest"
export KMS_TF="tftest"
export KMS_KR_TF="test"
