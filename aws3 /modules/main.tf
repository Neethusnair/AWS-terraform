terraform{
    required_version = ">=0.14"
}

resource "aws_subnet" "web" {
  vpc_id     = var.vpc_id
  cidr_block = var.cidr_block
  tags = {
    Name = "nsubnet"
  }
}

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.web.id
   tags = {
    Name = var.web_name
  }

}