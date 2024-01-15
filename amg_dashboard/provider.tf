#https://registry.terraform.io/providers/grafana/grafana/2.8.1
terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "2.8.1"
    }
  }
}
provider "grafana" {
  url  = var.grafana_workspace_url
  auth = var.grafana_workspace_auth
}