output "kms_policies_applied" {
  value = [for policy in google_org_policy_policy.kms_policies : policy.name]
}
