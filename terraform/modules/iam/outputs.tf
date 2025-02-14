output "iam_policies_applied" {
  value = [for policy in google_org_policy_policy.iam_policies : policy.name]
}