terraform {
  backend "s3" {
    bucket  = "terraform-remote-bucket-skundu"
    encrypt = true
    key     = "tf/managed-grafana/workspace/terraform.tfstate"
    region  = "us-east-2"
  }
}