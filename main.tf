provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  count         =  2
  ami           = "ami-00b8917ae86a424c9"
  instance_type = "t2.medium"
  key_name      = "mykeypair9am"
  tags = {
    Name = "mumbai-server"
  }
}

resource "aws_s3_bucket" "abcd" {
bucket = "devopsherahamshaik0099889977hcp"
}
