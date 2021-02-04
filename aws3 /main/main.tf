provider "aws" {
  region     = "us-west-1"
  access_key = "*********"
  secret_key = "**********"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "nvcp"
  }
}

module "web" {
  source        = "../modules"
  vpc_id        = aws_vpc.main.id
  cidr_block    = aws_vpc.main.cidr_block
  web_name      = "Nweb"
  ami           = "ami-00831fc7c1e3ddc60"
  instance_type = "t2.micro"
}


