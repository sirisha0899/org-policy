resource "google_org_policy_policy" "logging_policies" {
  for_each = toset([
    "constraints/logging.disableStackdriverLogging",
    "constraints/logging.requireLogging",
    "constraints/logging.preventDeletionOfAuditLogs",
    "constraints/logging.enableAuditLogging",
    "constraints/logging.requireDataAccessAuditLogging",
    "constraints/logging.preventServiceAccountActivityLogging",
    "constraints/logging.requireExportToCloudStorage",
    "constraints/logging.enableAdminActivityLogging"
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
