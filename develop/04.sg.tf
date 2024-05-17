## Security Group ##

resource "aws_security_group" "nginx-server-sg" {
  name        = "${var.server_name}-sg"
  description = "Allow inbound traffic ssh and http"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
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
    Name        = "${var.server_name}-sg"
    Environment = var.enviroment
    Owner       = "guecha"
    Team        = "devops"
    Project     = "${var.server_name}"
  }
}