terraform {
    backend "remote" {
        organization = "terraform-associate-prep-org"
        workspaces {
            name = "learn-terraform-aws-instance"
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
    region  = "eu-west-1"
}

resource "aws_instance" "app_server" {
    ami = "ami-02b4e72b17337d6c1"
    instance_type = "t2.micro"

    tags = {
        Name = var.instance_name
    }
}