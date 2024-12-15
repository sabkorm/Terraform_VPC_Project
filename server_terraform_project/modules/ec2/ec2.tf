resource "aws_instance" "terraform_project" {
  ami = var.ami_id
  instance_type = var.instance_type
  count = var.ec2_count
  subnet_id = element(var.subnet_id, count.index)

  tags = {
    Name = "${var.ec2_name}-${count.index+1}"
  }

  vpc_security_group_ids = [var.security_group_id]
}