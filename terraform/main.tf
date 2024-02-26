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
  region  = "us-east-1"
}

# Non TF state related resources

resource "aws_instance" "test_instance_1" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"

  tags = {
    Name = "TestInstance1"
  }
}

resource "aws_instance" "test_instance_2" {
  ami           = "ami-0440d3b780d96b29d"
  instance_type = "t2.micro"

  tags = {
    Name = "TestInstance2"
  }
}