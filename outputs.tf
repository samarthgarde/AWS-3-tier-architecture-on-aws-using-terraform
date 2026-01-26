# Auto scaling group name
output "autoscaling_group_name" {
    description = "The name of the Auto Scaling Group"
    value       = aws_autoscaling_group.web_asg.name
}

# App EC2 private IP address
output "app_ec2_private_ip" {
    description = "The private IP address of the app EC2 instance"
    value       = aws_instance.app_ec2.private_ip
}

# RDS Endpoint
output "rds_endpoint" {
    description = "The endpoint of the RDS instance"
    value       = aws_db_instance.mysql_db.endpoint
}

# vpc ID
output "vpc_id" {
    description = "The ID of the VPC"
    value       = aws_vpc.main.id
}

# ALB DNS Name
output "alb_dns_name" {
    description = "The DNS name of the Application Load Balancer"
    value       = aws_lb.web_alb.dns_name
}


