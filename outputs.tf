# --- azurerm_role_definition ---
output "role_definitions_id" {
  description = "Map of id values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_id
}

output "role_definitions_assignable_scopes" {
  description = "Map of assignable_scopes values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_assignable_scopes
}

output "role_definitions_description" {
  description = "Map of description values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_description
}

output "role_definitions_name" {
  description = "Map of name values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_name
}

output "role_definitions_permissions" {
  description = "Map of permissions values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_permissions
}

output "role_definitions_role_definition_id" {
  description = "Map of role_definition_id values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_role_definition_id
}

output "role_definitions_role_definition_resource_id" {
  description = "Map of role_definition_resource_id values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_role_definition_resource_id
}

output "role_definitions_scope" {
  description = "Map of scope values across all role_definitions, keyed the same as var.role_definitions"
  value       = module.role_definitions.role_definitions_scope
}

# --- azurerm_role_management_policy ---
output "role_management_policies_id" {
  description = "Map of id values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_id
}

output "role_management_policies_activation_rules" {
  description = "Map of activation_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_activation_rules
}

output "role_management_policies_active_assignment_rules" {
  description = "Map of active_assignment_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_active_assignment_rules
}

output "role_management_policies_description" {
  description = "Map of description values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_description
}

output "role_management_policies_eligible_assignment_rules" {
  description = "Map of eligible_assignment_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_eligible_assignment_rules
}

output "role_management_policies_name" {
  description = "Map of name values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_name
}

output "role_management_policies_notification_rules" {
  description = "Map of notification_rules values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_notification_rules
}

output "role_management_policies_role_definition_id" {
  description = "Map of role_definition_id values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_role_definition_id
}

output "role_management_policies_scope" {
  description = "Map of scope values across all role_management_policies, keyed the same as var.role_management_policies"
  value       = module.role_management_policies.role_management_policies_scope
}


