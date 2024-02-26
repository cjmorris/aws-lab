terraform {
  backend "s3" {
    bucket = "cjmorris-lab-tf-state"
    key = "terraform/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform_state_locks"
    encrypt = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = var.region
}

# Non TF state related resources

resource "aws_instance" "test_instance_1" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "TestInstance1"
  }
}

resource "aws_instance" "test_instance_2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "TestInstance2"
  }
}