variable "binary_authorization_policies" {
  description = <<EOT
Map of binary_authorization_policies, attributes below
Required:
    - default_admission_rule (block):
        - enforcement_mode (required)
        - evaluation_mode (required)
        - require_attestations_by (optional)
Optional:
    - deletion_policy
    - description
    - global_policy_evaluation_mode
    - project
    - admission_whitelist_patterns (block):
        - name_pattern (required)
    - cluster_admission_rules (block):
        - cluster (required)
        - enforcement_mode (required)
        - evaluation_mode (required)
        - require_attestations_by (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deletion_policy               = optional(string)
    description                   = optional(string)
    global_policy_evaluation_mode = optional(string)
    project                       = optional(string)
    default_admission_rule = object({
      enforcement_mode        = string
      evaluation_mode         = string
      require_attestations_by = optional(set(string))
    })
    admission_whitelist_patterns = optional(list(object({
      name_pattern = string
    })))
    cluster_admission_rules = optional(list(object({
      cluster                 = string
      enforcement_mode        = string
      evaluation_mode         = string
      require_attestations_by = optional(set(string))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

