terraform {
  backend "s3" {
    bucket         = "your-s3-bucket-name"
    key            = "eks-cluster1/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-table"
  }
}
