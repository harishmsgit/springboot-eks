terraform {
  backend "s3" {
    bucket = "harish-s3-bucket-02-10-25"
    key    = "harish/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-lock"
  }
}
#terraform.tfstate file will be created in the s3 bucket mentioned above not in local system
#to initialize the backend run command terraform init
#to check the status of the backend run command terraform plan
#to apply the changes run command terraform apply
#to destroy the resources run command terraform destroy
#to see the state file run command terraform show
#to see the state file in json format run command terraform show -json
#to see the state file in local system run command terraform state pull
#to push the state file to remote backend run command terraform state push <file>
#to migrate the state file from local to remote backend run command terraform init -migrate-state
#to see the list of resources in the state file run command terraform state list