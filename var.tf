
variable "region" {
  default = "eu-west-1"
}
variable "instance_count" {
  default = "2"
}
variable "instance_type" {
  default = "t2.micro"
}
variable "ami" {
  default = "ami-06fd8a495a537da8b"
}
variable "vpc_cidr" {
  default = "10.1.0.0/16"
}

variable "private_subnets" {
  default = ["10.1.0.0/24", "10.1.1.0/24"]
}

variable "public_subnets" {
  default = ["10.1.10.0/24", "10.1.20.0/24"]
}

variable "subnet_id" {
  default = "subnet-0ffbe71882deab7b5"
}
