output "public_subnet_id" {
   description = "ID of the public subnet"
   value = aws_subnet.tutorial_public_subnet.id
}

output "vpc_id" {
   description = "ID of the VPC"
   value = aws_vpc.tutorial_vpc.id
}