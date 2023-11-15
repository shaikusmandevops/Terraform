terraform {
  backend "s3" {
    bucket = "maketest1"
    key    = "09-state/terraform.tfstate"
    region = "us-east-1"
  }
}
