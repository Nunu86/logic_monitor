variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-east-1"
  
}



variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = ""
  
}

variable "subnets" {
  description = "A map of subnets to create in the xalient_vpc"
  type = map(object({
    
    availability_zone       = string
    map_public_ip_on_launch = bool
    cidr_block              = string
    tags                    = map(string)
  }))
}
    
  