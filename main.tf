provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "three" {
  ami           = "ami-00b8917ae86a424c9"
  instance_type = "t2.medium"
  key_name      = "apr6pm"
  tags = {
    Name = "mumbai-server"
  }
}
