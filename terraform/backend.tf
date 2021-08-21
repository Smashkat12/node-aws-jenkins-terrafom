terraform {
  backend "s3" {
    bucket = "metmomk-aws-jenkins-terraform"
    key    = "node-aws-jenkins-terraform.tfstate"
    region = "eu-west-1"
  }
}
