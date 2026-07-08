# --- azurerm_role_definition ---
output "role_definitions" {
  description = "All role_definition resources"
  value       = module.role_definitions.role_definitions
}
output "role_definitions_assignable_scopes" {
  description = "List of assignable_scopes values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.assignable_scopes]
}
output "role_definitions_description" {
  description = "List of description values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.description]
}
output "role_definitions_name" {
  description = "List of name values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.name]
}
output "role_definitions_permissions" {
  description = "List of permissions values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.permissions]
}
output "role_definitions_role_definition_id" {
  description = "List of role_definition_id values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.role_definition_id]
}
output "role_definitions_role_definition_resource_id" {
  description = "List of role_definition_resource_id values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.role_definition_resource_id]
}
output "role_definitions_scope" {
  description = "List of scope values across all role_definitions"
  value       = [for k, v in module.role_definitions.role_definitions : v.scope]
}


# --- azurerm_role_management_policy ---
output "role_management_policies" {
  description = "All role_management_policy resources"
  value       = module.role_management_policies.role_management_policies
}
output "role_management_policies_activation_rules" {
  description = "List of activation_rules values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.activation_rules]
}
output "role_management_policies_active_assignment_rules" {
  description = "List of active_assignment_rules values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.active_assignment_rules]
}
output "role_management_policies_description" {
  description = "List of description values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.description]
}
output "role_management_policies_eligible_assignment_rules" {
  description = "List of eligible_assignment_rules values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.eligible_assignment_rules]
}
output "role_management_policies_name" {
  description = "List of name values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.name]
}
output "role_management_policies_notification_rules" {
  description = "List of notification_rules values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.notification_rules]
}
output "role_management_policies_role_definition_id" {
  description = "List of role_definition_id values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.role_definition_id]
}
output "role_management_policies_scope" {
  description = "List of scope values across all role_management_policies"
  value       = [for k, v in module.role_management_policies.role_management_policies : v.scope]
}



