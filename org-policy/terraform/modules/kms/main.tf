resource "google_org_policy_policy" "kms_policies" {
  for_each = toset([
    "constraints/cloudkms.allowedProtectionLevels",
    "constraints/cloudkms.disableBeforeDestroy",
    "constraints/cloudkms.minimumDestroyScheduledDuration"
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
