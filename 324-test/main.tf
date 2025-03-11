terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my-test" {
    ami = "ami-04b4f1a9cf54c11d0"
    instance_type = "t1.micro"
}