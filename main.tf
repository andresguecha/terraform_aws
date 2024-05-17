### MODULOS ##

module "nginx_server_dev"{
    source = "./develop"

    ami_id        = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    server_name   = "nginx-server-dev"
    enviroment    = "dev"
}