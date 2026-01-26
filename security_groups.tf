# Security group of front end tier
resource "aws_security_group" "frontend_sg" {
    name        = "3tier_frontend_sg"
    description = "Security group for front end tier"
    vpc_id      = aws_vpc.main.id

    ingress  {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        security_groups = [aws_security_group.alb_sg.id]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "3tier_frontend_sg"
    }
}

# Security group of application tier
resource "aws_security_group" "app_sg" {
    name        = "3tier_app_sg"
    description = "Security group for application tier"
    vpc_id      = aws_vpc.main.id

    ingress  {
        description    = "Allow HTTP from Frontend"
        from_port       = 8080
        to_port         = 8080
        protocol        = "tcp"
        security_groups = [aws_security_group.frontend_sg.id]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "3tier_app_sg"
    }
}

# Security group of database tier
resource "aws_security_group" "db_sg" {
    name        = "3tier_db_sg"
    description = "Security group for database tier"
    vpc_id      = aws_vpc.main.id

    ingress  {
        description    = "Allow MySQL from App"
        from_port       = 3306
        to_port         = 3306
        protocol        = "tcp"
        security_groups = [aws_security_group.app_sg.id]
    }

    egress  {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "3tier_db_sg"
    }
}

# security group for alb
resource "aws_security_group" "alb_sg" {
    name        = "3tier_alb_sg"
    description = "Security group for ALB"
    vpc_id      = aws_vpc.main.id

    ingress  {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "3tier_alb_sg"
    }
}