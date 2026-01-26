resource "aws_instance" "app_ec2" {
    ami             = data.aws_ami.amazon_linux.id
    instance_type   = var.app_instance_type
    subnet_id       = aws_subnet.private_subnet_1.id
    vpc_security_group_ids = [aws_security_group.app_sg.id]
    key_name        = var.key_pair_name

    user_data = <<EOF
#!/bin/bash
sudo yum update -y
sudo yum install -y java-1.8.0-openjdk
echo "<h1>Application Tier Working</h1>" > /home/ec2-user/app.txt
EOF

    tags = {
        Name = "3tier_app_ec2"
    }

}