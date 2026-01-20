# VPC
resource "aws_vpc" "main"{
    cidr_block = var.vpc_cidr
    instance_tenancy = "default"

    tags = {
        Name = "3tier_vpc"
    }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id
    tags = {
        Name = "3tier_igw"
    }
}

# Public Subnet 1 
resource "aws_subnet" "public_subnet_1" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.public_subnet_1_cidr
    availability_zone = "ap-south-1a"

    tags = {
        Name = "3tier_public_subnet_1"
    }
}

# Public Subnet 2

resource "aws_subnet" "public_subnet_2" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.public_subnet_2_cidr
    availability_zone = "ap-south-1b"

    tags = {
        Name = "3tier_public_subnet_2"
    }
}

# Private Subnet 1
resource "aws_subnet" "private_subnet_1" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.private_subnet_1_cidr
    availability_zone = "ap-south-1a"

    tags = {
        Name = "3tier_private_subnet_1"
    }
}

# Private Subnet 2
resource "aws_subnet" "private_subnet_2" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.private_subnet_2_cidr
    availability_zone = "ap-south-1b"

    tags = {
        Name = "3tier_private_subnet_2"
    }
}

# private subnet 3
resource "aws_subnet" "private_subnet_3" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.private_subnet_3_cidr
    availability_zone = "ap-south-1c"

    tags = {
        Name = "3tier_private_subnet_3"
    }
}

# private subnet 4
resource "aws_subnet" "private_subnet_4" {
    vpc_id            = aws_vpc.main.id
    cidr_block        = var.private_subnet_4_cidr
    availability_zone = "ap-south-1c"

    tags = {
        Name = "3tier_private_subnet_4"
    }
}

