# DB Subnet Group
resource "aws_db_subnet_group" "rds_subnet_group" {
    name    = "threetier-rds-subnet-group"
    subnet_ids = [
        aws_subnet.private_subnet_1.id,
        aws_subnet.private_subnet_2.id
    ]

    tags = {
        Name = "threetier_rds_subnet_group"
    }
}

# RDS MYSQL Instance
resource "aws_db_instance" "mysql_db" {
    identifier              = "three-tier-mysql-db"
    allocated_storage       = 20
    engine                  = "mysql"
    engine_version          = "8.0"
    instance_class          = "db.t3.micro"
    db_name                 = var.db_name
    username                = var.db_username
    password                = var.db_password
    parameter_group_name    = "default.mysql8.0"
    skip_final_snapshot     = true
    publicly_accessible     = false

    vpc_security_group_ids = [aws_security_group.db_sg.id]
    db_subnet_group_name   = aws_db_subnet_group.rds_subnet_group.name

    tags = {
        Name = "3tier_mysql_db"
    }
}