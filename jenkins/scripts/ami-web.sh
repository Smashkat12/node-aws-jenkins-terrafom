cd terraform
packer build -machine-readable packer-ami-web.json | sudo tee build.log
AMI_ID_WEB=`echo $ARTIFACT_WEB | cut -d ':' -f2`
echo 'variable "WEB_INSTANCE_AMI" { default = "'${AMI_ID_WEB}'" }' > amivar_web.tf
aws s3 cp amivar_web.tf s3://metmomk-aws-jenkins-terraform/amivar_web.tf