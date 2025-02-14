output "asset_inventory_policies_applied" {
  value = [for policy in google_org_policy_policy.asset_inventory_policies : policy.name]
}
