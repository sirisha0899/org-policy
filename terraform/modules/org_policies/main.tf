resource "google_org_policy_policy" "policy" {
  for_each = var.policies

  name   = "${var.org_id}/policies/${each.key}"
  parent = var.org_id

  spec {
    rules {
      enforce = true
    }
  }
}
