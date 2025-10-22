resource "aws_vpc" "xalient_vpc" {
  cidr_block       = var.vpc_cidr_block 

  tags = {
    Name = "xalient_vpc"
  }
}

resource "aws_subnet" "xalient_subnets" {
  for_each = var.subnets

  vpc_id     = aws_vpc.xalient_vpc.id
  cidr_block = each.value.cidr_block
  availability_zone = each.value.availability_zone
  map_public_ip_on_launch = each.value.map_public_ip_on_launch

  tags = merge(
    each.value.tags,
    {
      "Name" = each.key
    }
  )
}