#https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/folder
resource "grafana_folder" "data" {
  title = "data"
}
#https://registry.terraform.io/providers/grafana/grafana/latest/docs/resources/dashboard
resource "grafana_dashboard" "metrics" {
  config_json = file("/dashboard/aws-lambda_rev13.json")
  folder = grafana_folder.data.id
}