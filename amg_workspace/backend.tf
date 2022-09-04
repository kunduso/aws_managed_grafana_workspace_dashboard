terraform {
  backend "s3" {
    bucket  = "kunduso-terraform-remote-bucket"
    encrypt = true
    key     = "tf/managed-grafana/terraform.tfstate"
    region  = "us-east-2"
  }
}