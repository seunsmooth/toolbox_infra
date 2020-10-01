
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

variable "white_listed_entrants" {
  default = ["87.80.20.214/32", "0.0.0.0/0"]
}

variable "stack" {
  description = "Name of the Stack"
  default     = "terraform"
}

variable "ENV" {
  default = "dev"

}

#variable "PATH_TO_PUBLIC_KEY" {
#  default = "mykey.pub"
#}
#
#variable "PATH_TO_PRIVATE_KEY" {
#  default = "mykey"
#}
