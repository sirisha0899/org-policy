output "logging_policies_applied" {
  value = [for policy in google_org_policy_policy.logging_policies : policy.name]
}
