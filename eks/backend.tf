terraform {
  backend "s3" {
    bucket         = "demo-terraform-eks-state-bucket"
    key            = "terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-eks-state-locks"
    encrypt        = true
  }
}