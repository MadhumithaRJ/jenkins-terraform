terraform {
    required_version = "~> 1.10.2" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.76.1"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "myec2" {
	ami = "ami-0453ec754f44f9a4a" 
	instance_type = "t2.micro"
	subnet_id     = "subnet-085c5d4727d7e53a2"
  key_name = "MADHU1"
  tags = {
      Name = "ExampleInstance"
    }
}

  
