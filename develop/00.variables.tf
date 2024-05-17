## VARIALBES ##

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  default     = "ami-0bb84b8ffd87024d8" # Amazon Linux 2 AMI
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  default     = "t2.micro"
}
variable "server_name" {
  description = "Name of the server"
  default     = "nginx-server"
}

variable "enviroment" {
  description = "The enviroment of the server"
  default     = "dev"
}