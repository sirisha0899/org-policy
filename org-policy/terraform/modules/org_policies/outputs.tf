output "policies_applied" {
  value = [for policy in google_org_policy_policy.org_policies : policy.name]
}
