provider "aws" {
region = "us-east-1"
}

terraform {
  backend "remote" {
    organization = "raham"

    workspaces {
      name = "dummyterraform"
    }
  }
}


resource "aws_instance" "three" {
  count         =  3
  ami           = "ami-00b8917ae86a424c9"
  instance_type = "t2.medium"

  tags = {
    Name = "mumbai-server"
  }
}

resource "aws_s3_bucket" "abcd" {
bucket = "devopsherahamshaik0099889977hcp"
}
