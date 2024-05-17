

# llave SSH ##
## ssh-*keygen -t rsa -b 2048 f "nginx-server.key"


resource "aws_key_pair" "nginx-server-ssh" {
  key_name   = "${var.server_name}-ssh"
  public_key = file("id_rsa.pub")
  tags = {
    Name        = "${var.server_name}-ssh"
    Environment = var.enviroment
    Owner       = "guecha"
    Team        = "devops"
    Project     = "${var.server_name}"
  }

}
