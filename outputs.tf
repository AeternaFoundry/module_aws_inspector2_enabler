output "inspector2_enablers_id" {
  description = "Map of id values across all inspector2_enablers, keyed the same as var.inspector2_enablers"
  value       = { for k, v in aws_inspector2_enabler.inspector2_enablers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "inspector2_enablers_account_ids" {
  description = "Map of account_ids values across all inspector2_enablers, keyed the same as var.inspector2_enablers"
  value       = { for k, v in aws_inspector2_enabler.inspector2_enablers : k => v.account_ids if v.account_ids != null && length(v.account_ids) > 0 }
}
output "inspector2_enablers_region" {
  description = "Map of region values across all inspector2_enablers, keyed the same as var.inspector2_enablers"
  value       = { for k, v in aws_inspector2_enabler.inspector2_enablers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "inspector2_enablers_resource_types" {
  description = "Map of resource_types values across all inspector2_enablers, keyed the same as var.inspector2_enablers"
  value       = { for k, v in aws_inspector2_enabler.inspector2_enablers : k => v.resource_types if v.resource_types != null && length(v.resource_types) > 0 }
}

