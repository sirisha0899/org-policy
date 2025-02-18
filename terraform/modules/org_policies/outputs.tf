output "applied_policies" {
  description = "List of applied organization policies"
  value       = keys(var.policies)
}
