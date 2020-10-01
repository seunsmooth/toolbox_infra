
resource "aws_instance" "toolbox_01" {
  ami                         = var.ami
  count                       = var.instance_count
  associate_public_ip_address = true
  instance_type               = var.instance_type
  subnet_id                   = module.vpc.public_subnets[count.index]
  vpc_security_group_ids      = [aws_security_group.sg-dev.id]
  key_name                    = "belgium2"

  tags = {
    Name = "ToolBox ${count.index}"
  }
}
