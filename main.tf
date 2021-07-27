terraform {
  backend "remote" {
    organization = "CloudTrybe"

    workspaces {
      name = "Dev-Workspace"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = var.instance_ami
//  ami           = "ami-08d70e59c07c61a3a"
  instance_type = "t2.micro"
  key_name = "aws_kms_key"

  tags = {
    Name = var.instance_name
  }
}
