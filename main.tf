# provider block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-2"
  profile = "authprofile"
}


resource "aws_instance" "instances" {
  count         = 15
  ami           = "ami-02774d409be696d81"
  instance_type = "t3.micro"
  #availability_zone = var.availability_zone

  tags = {
    #Name        = "cleanup-test-instance-${count.index + 1}"
    Name = "testing"
    #Purpose     = "cleanup-testing"
  }
}

resource "aws_ebs_volume" "volumes" {
  count             = 1
  availability_zone = "ap-south-2a"
  size              = "100"
  encrypted         = false

  tags = {
    #Name        = "cleanup-test-volume-${count.index + 1}"
    Name = "testing"
    #Purpose     = "cleanup-testing"
  }
}
