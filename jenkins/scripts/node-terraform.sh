set +x
cd terraform
aws s3 cp s3://metmomk-aws-jenkins-terraform/amivar_api.tf amivar_api.tf
aws s3 cp s3://metmomk-aws-jenkins-terraform/amivar_web.tf amivar_web.tf

/usr/local/bin/terraform init
/usr/local/bin/terraform apply -auto-approve -var RDS_PASSWORD=$RDS_PASSWORD