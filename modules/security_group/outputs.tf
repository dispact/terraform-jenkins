output "sg_id" {
   description = "The security group ID created"
   value = aws_security_group.tutorial_jenkins_sg.id
}