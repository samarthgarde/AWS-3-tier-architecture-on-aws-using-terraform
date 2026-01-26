# AWS Region
variable "aws_region" {
    description = "The AWS region"
    type        = string
    default     = "ap-south-1"
}

# VPC CIDR Block
variable "vpc_cidr" {
    description = "The CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

# Public Subnet 1 CIDR Block
variable "public_subnet_1_cidr" {
    description = "The CIDR block for Public Subnet 1"
    type        = string
    default     = "10.0.0.0/24"
}

# Public Subnet 2 CIDR Block
variable "public_subnet_2_cidr" {
    description = "The CIDR block for Public Subnet 2"
    type        = string
    default     = "10.0.30.0/24"
}

# Private Subnet 1 CIDR Block
variable "private_subnet_1_cidr" {
    description = "The CIDR block for Private Subnet 1"
    type        = string
    default     = "10.0.10.0/24"
}

# Private Subnet 2 CIDR Block
variable "private_subnet_2_cidr" {
    description = "The CIDR block for Private Subnet 2"
    type        = string
    default     = "10.0.40.0/24"

}

# Private Subnet 3 CIDR Block
variable "private_subnet_3_cidr" {
    description = "The CIDR block for Private Subnet 3"
    type        = string
    default     = "10.0.20.0/24"
}

# private subnet 4 CIDR Block
variable "private_subnet_4_cidr" {
    description = "The CIDR block for Private Subnet 4"
    type        = string
    default     = "10.0.50.0/24"

}

# web EC2 Instance Type
variable "web_instance_type" {
    description = "The instance type for the web EC2 instance"
    type        = string
    default     = "t2.micro"
}

# Key Pair Name
variable "key_pair_name" {
    description = "The name of the key pair to use for EC2 instances"
    type        = string
    default     = "apptierkeypair"
}

# app EC2 Instance Type
variable "app_instance_type" {
    description = "The instance type for the app EC2 instance"
    type        = string
    default     = "t2.micro"
}

# RDS Database Name
variable "db_name" {
    description = "The name of the RDS database"
    type        = string
    default     = "mydatabase"
}

# RDS Database Username
variable "db_username" {
    description = "The username for the RDS database"
    type        = string
    default     = "admin"
}

# RDS Database Password
variable "db_password" {
    description = "The password for the RDS database"
    type        = string
    default     = "MySqlPass123!"
}

# RDS Instance Class
variable "db_instance_class" {
    description = "The instance class for the RDS database"
    type        = string
    default     = "db.t3.micro"
}