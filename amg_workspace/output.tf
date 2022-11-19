output "aws_grafana_workspace_value" {
  value = aws_grafana_workspace.workspace.id
  sensitive = true
}