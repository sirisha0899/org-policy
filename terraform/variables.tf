variable "org_id" {
  description = "Your Google Cloud Organization ID"
  type        = string
}

variable "project_id" {
  description = "The project ID where resources will be managed"
  type        = string
}
variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The default region for GCP resources"
  type        = string
}

variable "organization_id" {
  description = "The GCP organization ID"
  type        = string
}

variable "policies" {
  description = "A map of organization policies to enforce"
  type        = map(object({
    constraint = string
    enforce    = bool
  }))
}
