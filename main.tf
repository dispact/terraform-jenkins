terraform {
   required_providers {
      aws = {
         source = "hashicorp/aws"
         version = "4.0.0"
      }
   }

   required_version = "~> 1.1.5"
}

provider "aws" {
   region = var.aws_region
}


module "vpc" {
   source = "./modules/vpc"

   vpc_cidr_block = var.vpc_cidr_block
   public_subnet_cidr_block = var.public_subnet_cidr_block
}

module "security_group" {
   source = "./modules/security_group"
   vpc_id = module.vpc.vpc_id
   my_ip = var.my_ip
}

module "ec2_instance" {
   source = "./modules/compute"
   security_group = module.security_group.sg_id
   public_subnet = module.vpc.public_subnet_id
}

