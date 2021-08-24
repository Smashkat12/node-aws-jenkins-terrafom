variable "AWS_REGION" {
  default = "eu-west-1"
}
variable "PATH_TO_PRIVATE_KEY" {
  default = "~/.shh/jenkins.pem"
}
variable "PATH_TO_PUBLIC_KEY" {
  default = "~/.shh/jenkins.pub"
}
variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0f9cf087c1f27d9b1"
    us-west-2 = "ami-0653e888ec96eab9b"
    eu-west-1 = "ami-08e5fbb6900e02e3b"
  }
}
variable "INSTANCE_DEVICE_NAME" {
  default = "/dev/xvdh"
}
variable "JENKINS_VERSION" {
  default = "2.121.2"
}
variable "TERRAFORM_VERSION" {
  default = "1.0.5"
}

variable "APP_INSTANCE_COUNT" {
  default = "0"
}
