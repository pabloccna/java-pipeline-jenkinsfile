terraform {
  backend "s3" {
    bucket = "terraform-bucket-pdg"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
