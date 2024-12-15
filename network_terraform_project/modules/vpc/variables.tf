variable "vpc_cidr_block" {
    type = string
    default = "10.0.0.0/16" 
}

variable "vpc_name" {
    type = string
    default = "sab-vpc-project"  
}

variable "subnet_1_cidr" {
    type = string
    default = "10.0.1.0/24"  
}

variable "subnet_1_az" {
    type = string
    default = "eu-central-1a"
}

variable "subnet_2_cidr" {
    type = string
    default = "10.0.2.0/24"
}

variable "subnet_2_az" {
  type = string
  default = "eu-central-1b"
}