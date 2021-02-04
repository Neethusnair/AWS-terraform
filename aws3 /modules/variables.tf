variable "vpc_id" {
  type =  string
  description = "VPC-Id"
}

variable "cidr_block" {
  type =  string
  description = "Subnet-cider-block"
}

variable "web_name" {
  type =  string
  description = "instance-name"
}

variable "ami" {
  type =  string
  description = "AMI"
}

variable "instance_type" {
  type =  string
  description = "Instance-type"
}