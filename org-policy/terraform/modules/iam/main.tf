resource "google_org_policy_policy" "iam_policies" {
  for_each = toset([
    "constraints/iam.allowedPolicyMemberDomains",
    "constraints/iam.disableNewMember",
    "constraints/iam.restrictServiceAccount",
    "constraints/iam.managed.allowedPolicyMembers",
    "constraints/iam.managed.preventPrivilegedBasicRolesForDefaultServiceAccounts",
    "constraints/gcp.detailedAuditLoggingMode"
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
