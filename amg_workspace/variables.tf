#Define AWS Region
variable "region" {
  description = "Infrastructure region"
  type        = string
  default     = "us-east-2"
}
#Define IAM User Access Key
variable "access_key" {
  description = "The access_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}
#Define IAM User Secret Key
variable "secret_key" {
  description = "The secret_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}
variable "display_name" {
  description = "The user name to display. "
  type        = string
}
variable "user_name" {
  description = "The user name to access the Amazon Managed Grafana workspace. "
  type        = string
}
variable "given_name" {
  description = "The first name of the user name to access the Amazon Managed Grafana workspace. "
  type        = string
}

variable "family_name" {
  description = "The family name of the user name to access the Amazon Managed Grafana workspace. "
  type        = string
}

variable "email" {
  description = "The email of the user name to access the Amazon Managed Grafana workspace. "
  type        = string
}