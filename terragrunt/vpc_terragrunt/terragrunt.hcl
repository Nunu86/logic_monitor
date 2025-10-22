include {
  path = find_in_parent_folders("root.hcl")
}

terraform {
  source = "../../infrastructure/module_vpc"
}


inputs = {
    
    vpc_cidr_block = "10.0.0.0/16"
    

    subnets = { 
    public_subnet_a  = {             
             availability_zone       = "us-east-1a"
             map_public_ip_on_launch = true
             cidr_block              = "10.0.0.0/24"
             tags = {
                env = "dev"
              }
    
    }  

    public_subnet_b  = {             
             availability_zone       = "us-east-1b"
             map_public_ip_on_launch = true
             cidr_block              = "10.0.1.0/24"
             tags = {
                env = "dev"
              }
    }  

    private_subnet_a  = {            
             availability_zone       = "us-east-1a"
             map_public_ip_on_launch = false
             cidr_block              = "10.0.10.0/24"
             tags = {
                env = "dev"
              }
    }  

    private_subnet_b  = {             
             availability_zone       = "us-east-1b"
             map_public_ip_on_launch = false
             cidr_block              = "10.0.11.0/24"
             tags = {
                env = "dev"
              }
    }  
 
  }
  }
