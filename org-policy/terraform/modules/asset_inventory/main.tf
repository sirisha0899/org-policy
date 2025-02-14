resource "google_org_policy_policy" "asset_inventory_policies" {
  for_each = toset([
    "constraints/cloudasset.enableAssetInventory",
    "constraints/cloudasset.requireAssetInventoryExport",
    "constraints/cloudasset.preventAssetInventoryDeletion",
    "constraints/cloudasset.requireAssetInventoryAuditLogging",
    "constraints/cloudasset.enableResourceInventory",
    "constraints/cloudasset.requireMetadataCollection",
    "constraints/cloudasset.preventResourceAccess",
    "constraints/cloudasset.enableRealTimeAssetTracking"
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
