terraform {
  backend "s3" {
    bucket = "emer-log"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
