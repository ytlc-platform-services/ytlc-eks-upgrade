terraform {
  backend "s3" {
    bucket         = "arn:aws:s3:::terraform-s3-eks-state"
    key            = "ytlc-publicwebsite-prod//terraform.tfstate"
    region         = "ap-southeast-1"
  }
}
