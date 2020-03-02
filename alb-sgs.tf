resource "aws_security_group" "default_lb" {
  name        = "terraform-springboot-newapp-lb"
  description = "Allow traffic"
  vpc_id      = "vpc-f8a48e82"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
} 