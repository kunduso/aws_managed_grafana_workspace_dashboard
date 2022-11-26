#https://registry.terraform.io/providers/grafana/grafana/1.30.0
terraform {
  required_providers {
    grafana = {
      source  = "grafana/grafana"
      version = "1.30.0"
    }
  }
}
provider "grafana" {
  url  = var.grafana_workspace_url
  auth = var.grafana_workspace_auth
}