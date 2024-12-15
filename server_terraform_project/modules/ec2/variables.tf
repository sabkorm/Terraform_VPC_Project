variable "ami_id" {
  type = string
  description = "ID of the AMI"
  default = "ami-0745b7d4092315796"
}

variable "instance_type" {
  type = string
  description = "instance type of the AMI"
  default = "t2.micro"
}

variable "ec2_name" {
  type = string
  description = "name of the EC2"
  default = "sab-terraform-project-instance"
}

variable "ec2_count" {
  type = number
  default = "2"
}

variable "security_group_id" {
  type = string
}

variable "subnet_id" {
}