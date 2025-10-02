provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
    ami = var.ami_value # Amazon Linux 2 AMI
    instance_type = var.instance_type_value #t2.micro
    subnet_id = var.subnet_id_value

    tags = {
        Name = "ExampleInstance"
    }
}