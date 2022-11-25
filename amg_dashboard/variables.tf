#Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "us-east-2"
}
variable "grafana_workspace_auth" {
  type = string
}
variable "grafana_workspace_url" {
  type = string
}