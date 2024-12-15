output "vpc_id" {
    value = aws_vpc.vpc_project.id  
}

output "subnet_id" {
    value = [ aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id ]
}