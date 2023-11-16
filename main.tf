terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "blue_grizly" {
  ami           = "ami-0fc5d935ebf8bc3bc"
  instance_type = "t2.micro"
  key_name = "app_server"
  vpc_security_group_ids = [ "vpc-0cd191f540bd666df" ]
  associate_public_ip_address = true

  provisioner "file" {
    source = "Aplicacion.tar.gz"
    destination = "/home/ubuntu/Aplicacion.tar.gz"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/script.sh",
      "/tmp/script.sh args",
    ]
  }

  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = "${file("~/Documents/Aplicacion/app_server.pem")}"
    host = "${self.public_ip}"
  }

  tags = {
    Name = "App_BlueGrizly-vpc"
  }
}