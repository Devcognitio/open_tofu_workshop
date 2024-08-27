resource "aws_launch_configuration" "nginx" {
  name          = "nginx-launch-config"
  image_id      = "ami-075d39ebbca89ed55" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              yum install -y nginx
              systemctl start nginx
              systemctl enable nginx
              EOF
}

resource "aws_autoscaling_group" "nginx_asg" {
  desired_capacity     = 3
  max_size             = 4
  min_size             = 1
  launch_configuration = aws_launch_configuration.nginx.id
  vpc_zone_identifier  = var.private_subnets

  tag {
    key                 = "Name"
    value               = "nginx-asg"
    propagate_at_launch = true
  }
}
