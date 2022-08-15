variable "REGION" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}


##################################################
#                 VPC
##################################################

variable "vpc_name" {
  description = "Name of VPC"
  type        = string
  default     = "example-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b", "us-west-2c"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply to resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

##################################################
#                 ec2
##################################################

variable "instance_count" {
  description = "number of ec2 instances to run"
  type        = number
  default     = 1
  }

variable "ec2_ami" {
  description = "The ami of the ec2 linux Instance"
  type        = string
  default     = "ami-0c5204531f799e0c6"
  }

variable "ec2_instance_type" {
  description = "A list of instance types you can choose ur ec2 instance from"
  type        = list(string)
  default     = ["t2.micro"]
  }


