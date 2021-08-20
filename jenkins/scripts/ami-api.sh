cd terraform
packer build -machine-readable packer-ami-api.json | sudo tee build.log
AMI_ID_API=`grep 'artifact,0,id' build.log | cut -d, -f6 | cut -d: -f2`
echo 'variable "API_INSTANCE_AMI" { default = "'${AMI_ID_API}'" }' > amivar_API.tf
aws s3 cp amivar_API.tf s3://metmomk-aws-jenkins-terraform/amivar_api.tf