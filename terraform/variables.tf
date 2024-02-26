variable "region" {
  description = "AWS region for resources"
  type        = string
  default     = "us-east-1"
}

variable "ami" {
  description = "AMI for EC2 instances"
  type        = string
  default     = "ami-0440d3b780d96b29d"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}