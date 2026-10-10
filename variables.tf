variable "inspector2_enablers" {
  description = <<EOT
Map of inspector2_enablers, attributes below
Required:
    - account_ids
    - resource_types
Optional:
    - region
EOT

  type = map(object({
    account_ids    = set(string)
    resource_types = set(string)
    region         = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

