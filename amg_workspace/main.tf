# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/grafana_workspace
resource "aws_grafana_workspace" "workspace" {
  name                     = "project-3"
  account_access_type      = "CURRENT_ACCOUNT"
  authentication_providers = ["AWS_SSO"]
  permission_type          = "SERVICE_MANAGED"
  role_arn                 = aws_iam_role.assume.arn
  data_sources             = ["CLOUDWATCH"]
}

resource "aws_iam_role" "assume" {
  name = "tf-grafana-assume"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "grafana.amazonaws.com"
        }
      },
    ]
  })
}
#Attach role to policy
#https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy_attachment
resource "aws_iam_policy_attachment" "gf_cw_policy_role" {
  name       = "cloudwatch_attachment"
  roles      = [aws_iam_role.assume.name]
  policy_arn = aws_iam_policy.grafana_cw_policy.arn
}
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/grafana_role_association
resource "aws_grafana_role_association" "role" {
  role         = "ADMIN"
  user_ids     = [aws_identitystore_user.user.user_id]
  workspace_id = aws_grafana_workspace.workspace.id
}