## RESOURCES ##
resource "aws_instance" "nginx-server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  user_data              = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install nginx -y
              sudo systemctl enable nginx
              sudo systemctl start nginx
              EOF
  key_name               = aws_key_pair.nginx-server-ssh.key_name  // enlaza la llave publica con la EC2 
  vpc_security_group_ids = [aws_security_group.nginx-server-sg.id] // enlaza el security group con la EC2 

  tags = {
    Name        = var.server_name
    Environment = var.enviroment
    Owner       = "guecha"
    Team        = "devops"
    Project     = "nginx-server"
  }
}
