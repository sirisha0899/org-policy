module "org_policies" {
  source = "./modules/policies"
  org_id = var.org_id
}

variable "project_id" {}
variable "org_id" {}

output "policies_applied" {
  value = [
    for k, v in module.org_policies.policies : v
  ]
}