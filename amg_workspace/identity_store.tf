data "aws_ssoadmin_instances" "current" {}

resource "aws_identitystore_user" "user" {
  identity_store_id = tolist(data.aws_ssoadmin_instances.current.identity_store_ids)[0]

  display_name = var.display_name
  user_name    = var.user_name

  name {
    given_name  = var.given_name
    family_name = var.family_name
  }

  emails {
    primary = true
    value   = var.email
  }
}