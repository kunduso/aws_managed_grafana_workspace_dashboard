terraform {
  backend "s3" {
    bucket  = "skundu-terraform-remote-state"
    encrypt = true
    key     = "tf/managed-grafana/workspace/terraform.tfstate"
    region  = "us-east-2"
  }
}