# Public Route Table
resource "aws_route_table" "public_rt" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
        Name = "3tier_public_rt"
    }
}

# Associate public route table with public subnet 1
resource "aws_route_table_association" "public_rt_assoc_1" {
    subnet_id      = aws_subnet.public_subnet_1.id
    route_table_id = aws_route_table.public_rt.id
}

# Associate public route table with public subnet 2
resource "aws_route_table_association" "public_rt_assoc_2" {
    subnet_id      = aws_subnet.public_subnet_2.id
    route_table_id = aws_route_table.public_rt.id
}

# Private Route Table
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "3tier_private_rt"
    }
}

# Associate private route table with private subnet 1
resource "aws_route_table_association" "private_rt_assoc_1" {
    subnet_id      = aws_subnet.private_subnet_1.id
    route_table_id = aws_route_table.private_rt.id
}
