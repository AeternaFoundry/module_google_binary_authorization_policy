resource "google_binary_authorization_policy" "binary_authorization_policies" {
  for_each = var.binary_authorization_policies

  deletion_policy               = each.value.deletion_policy
  description                   = each.value.description
  global_policy_evaluation_mode = each.value.global_policy_evaluation_mode
  project                       = each.value.project

  default_admission_rule {
    enforcement_mode        = each.value.default_admission_rule.enforcement_mode
    evaluation_mode         = each.value.default_admission_rule.evaluation_mode
    require_attestations_by = each.value.default_admission_rule.require_attestations_by
  }

  dynamic "admission_whitelist_patterns" {
    for_each = each.value.admission_whitelist_patterns != null ? each.value.admission_whitelist_patterns : []
    content {
      name_pattern = admission_whitelist_patterns.value.name_pattern
    }
  }

  dynamic "cluster_admission_rules" {
    for_each = each.value.cluster_admission_rules != null ? each.value.cluster_admission_rules : []
    content {
      cluster                 = cluster_admission_rules.value.cluster
      enforcement_mode        = cluster_admission_rules.value.enforcement_mode
      evaluation_mode         = cluster_admission_rules.value.evaluation_mode
      require_attestations_by = cluster_admission_rules.value.require_attestations_by
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

