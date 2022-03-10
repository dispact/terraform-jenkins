output "jenkins_public_ip" {
   description = "The public IP address of the Jenkins server"
   value = module.ec2_instance.public_ip
}