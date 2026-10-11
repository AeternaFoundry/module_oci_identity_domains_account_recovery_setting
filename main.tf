resource "oci_identity_domains_account_recovery_setting" "identity_domains_account_recovery_settings" {
  for_each = var.identity_domains_account_recovery_settings

  account_recovery_setting_id  = each.value.account_recovery_setting_id
  factors                      = each.value.factors
  idcs_endpoint                = each.value.idcs_endpoint
  lockout_duration             = each.value.lockout_duration
  max_incorrect_attempts       = each.value.max_incorrect_attempts
  schemas                      = each.value.schemas
  attribute_sets               = each.value.attribute_sets
  attributes                   = each.value.attributes
  authorization                = each.value.authorization
  external_id                  = each.value.external_id
  ocid                         = each.value.ocid
  resource_type_schema_version = each.value.resource_type_schema_version

  dynamic "tags" {
    for_each = each.value.tags != null ? each.value.tags : []
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

