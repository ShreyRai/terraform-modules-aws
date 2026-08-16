resource "aws_vpc" "vpc01" {
    cidr_block = var.vpc_cidr
    tags = {
      "Name" = var.vpc_name
    }
}

resource "aws_subnet" "pub_sub_01" {
  cidr_block = var.public_cidr
  vpc_id = aws_vpc.vpc01.id 
  tags = {
    "Name" = var.pub_sub_name
  }
}

resource "aws_subnet" "pri_sub_01" {
  cidr_block = var.private_cidr
  vpc_id = aws_vpc.vpc01.id
  tags = {
    "Name" = var.pri_sub_name
  }
}

resource "aws_route_table" "rt_01" {
    vpc_id = aws_vpc.vpc01.id
    tags = {
      "Name" = var.route_table_name
    }
}

resource "aws_route_table_association" "rta_01" {
  route_table_id = aws_route_table.rt_01.id
  subnet_id = aws_subnet.pub_sub_01.id
}

resource "aws_internet_gateway" "igw_01" {
  vpc_id = aws_vpc.vpc01.id 
  tags = {
    "Name" = var.igw_name
  }
}

resource "aws_route" "route-01" {
  gateway_id = aws_internet_gateway.igw_01.id 
  route_table_id = aws_route_table.rt_01.id 
}