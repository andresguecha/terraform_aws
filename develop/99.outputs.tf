## OUTPUTS ##

output "server_public_ip" {
  description = "The public IP of the nginx server"
  value       = aws_instance.nginx-server.public_ip
}

output "server_public_dns" {
  description = "The public DNS of the nginx server"
  value       = aws_instance.nginx-server.public_dns
}

