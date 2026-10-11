output "binary_authorization_policies_id" {
  description = "Map of id values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no id are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "binary_authorization_policies_admission_whitelist_patterns" {
  description = "Map of admission_whitelist_patterns values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no admission_whitelist_patterns are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.admission_whitelist_patterns if v.admission_whitelist_patterns != null && length(v.admission_whitelist_patterns) > 0 }
}
output "binary_authorization_policies_cluster_admission_rules" {
  description = "Map of cluster_admission_rules values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no cluster_admission_rules are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.cluster_admission_rules if v.cluster_admission_rules != null && length(v.cluster_admission_rules) > 0 }
}
output "binary_authorization_policies_default_admission_rule" {
  description = "Map of default_admission_rule values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no default_admission_rule are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => one(v.default_admission_rule) if v.default_admission_rule != null && length(v.default_admission_rule) > 0 }
}
output "binary_authorization_policies_deletion_policy" {
  description = "Map of deletion_policy values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "binary_authorization_policies_description" {
  description = "Map of description values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no description are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "binary_authorization_policies_global_policy_evaluation_mode" {
  description = "Map of global_policy_evaluation_mode values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no global_policy_evaluation_mode are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.global_policy_evaluation_mode if v.global_policy_evaluation_mode != null && length(v.global_policy_evaluation_mode) > 0 }
}
output "binary_authorization_policies_project" {
  description = "Map of project values across all binary_authorization_policies, keyed the same as var.binary_authorization_policies except keys with no project are omitted"
  value       = { for k, v in google_binary_authorization_policy.binary_authorization_policies : k => v.project if v.project != null && length(v.project) > 0 }
}

