provider "aws" {
    region = "us-east-1"
}

module "ec2_instance" {
    source = "./Module/ec2-instance" #reuse code
    ami_value = "ami-052064a798f08f0d3" # Amazon Linux 2 AMI
    instance_type_value = "t2.micro"
    subnet_id_value = "subnet-03160ecea9684f62d" # Replace with your subnet ID
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "harish-s3-bucket-02-10-25"
}

resource "aws_dynamodb_table" "terraform_lock" {
    name         = "terraform-lock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key     = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}