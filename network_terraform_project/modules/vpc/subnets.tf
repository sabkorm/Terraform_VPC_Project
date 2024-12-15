resource "aws_subnet" "public_subnet_1" {
    vpc_id                  = aws_vpc.vpc_project.id
    cidr_block              = var.subnet_1_cidr
    availability_zone       = var.subnet_1_az
    map_public_ip_on_launch = true
    tags = {
      name = "sab-public-subnet-1"
    }
}

resource "aws_subnet" "public_subnet_2" {
    vpc_id                  = aws_vpc.vpc_project.id
    cidr_block              = var.subnet_2_cidr
    availability_zone       = var.subnet_2_az
    map_public_ip_on_launch = true
    tags = {
      name = "sab-public-subnet-2"
    }
}