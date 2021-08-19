terraform {
  backend "s3" {
    bucket = "metmomk-aws-jenkins-terraform"
    key    = "jenkins.terraform.tfstate"
    region = "eu-west-1"
  }
}