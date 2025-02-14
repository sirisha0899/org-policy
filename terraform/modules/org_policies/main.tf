resource "google_org_policy_policy" "org_policies" {
  for_each = toset([
    "constraints/iam.disableNewMember",
    "constraints/storage.allowedLocations",
    "constraints/compute.requireShieldedVM",
    "constraints/monitoring.preventExternalMonitoring",
    "constraints/gcp.disablePublicStorage",
    "constraints/compute.vmExternalIpAccess",
    "constraints/storage.enableDefaultBucket",
    "constraints/compute.preventExternalLoadBalancers"
  ])

  name   = "${var.org_id}/policies/${each.key}"
  parent = "organizations/${var.org_id}"

  spec {
    inherit_from_parent = false
    rules {
      enforce = true
    }
  }
}
