resource "aws_autoscaling_group" "web_asg" {
    launch_template {
        id      = aws_launch_template.web_lt.id
        version = "$Latest"
    }

    min_size                  = 1
    max_size                  = 3
    desired_capacity          = 1
    vpc_zone_identifier       = [aws_subnet.public_subnet_1.id, aws_subnet.public_subnet_2.id]
    health_check_type         = "EC2"
    health_check_grace_period = 300
    target_group_arns = [aws_lb_target_group.web_tg.arn]

    tag {
        key                 = "Name"
        value               = "WebServerASGInstance"
        propagate_at_launch = true
    }

    lifecycle {
        create_before_destroy = true
    }
  
}