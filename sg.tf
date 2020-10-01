

resource "aws_security_group" "sg-dev" {
  name        = "allow-ssh-dev"
  vpc_id      = module.vpc-dev.vpc_id
  description = "toolbox security group allow ssh "

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [element(var.white_listed_entrants, 0), element(var.white_listed_entrants, 1)]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
