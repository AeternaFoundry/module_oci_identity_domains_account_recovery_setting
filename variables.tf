variable "identity_domains_account_recovery_settings" {
  description = <<EOT
Map of identity_domains_account_recovery_settings, attributes below
Required:
    - account_recovery_setting_id
    - factors
    - idcs_endpoint
    - lockout_duration
    - max_incorrect_attempts
    - schemas
Optional:
    - attribute_sets
    - attributes
    - authorization
    - external_id
    - ocid
    - resource_type_schema_version
    - tags (block):
        - key (required)
        - value (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    account_recovery_setting_id  = string
    factors                      = list(string)
    idcs_endpoint                = string
    lockout_duration             = number
    max_incorrect_attempts       = number
    schemas                      = list(string)
    attribute_sets               = optional(list(string))
    attributes                   = optional(string)
    authorization                = optional(string)
    external_id                  = optional(string)
    ocid                         = optional(string)
    resource_type_schema_version = optional(string)
    tags = optional(list(object({
      key   = string
      value = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

