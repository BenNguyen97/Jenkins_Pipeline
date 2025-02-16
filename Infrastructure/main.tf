provider "aws" {
  region     = "ap-southeast-1" # 
  access_key = var.access_key
  secret_key = var.secret_key
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "test-jenkins-pipeline-Luan"
  cidr = "10.0.0.0/16"

  azs             = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  public_subnets  = ["10.0.0.0/24"]
}