module "org_policies" {
  source = "./modules/org_policies"
  org_id = var.org_id
}

module "iam" {
  source = "./modules/iam"
  org_id = var.org_id
}

module "kms" {
  source = "./modules/kms"
  org_id = var.org_id
}

module "logging" {
  source = "./modules/logging"
  org_id = var.org_id
}

module "asset_inventory" {
  source = "./modules/asset_inventory"
  org_id = var.org_id
}

variable "project_id" {}
variable "org_id" {}

output "policies_applied" {
  value = [
    for k, v in module.org_policies.policies_applied : v
  ]
}
