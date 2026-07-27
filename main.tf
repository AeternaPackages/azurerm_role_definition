locals {
  role_definitions = { for k1, v1 in var.role_definitions : k1 => { assignable_scopes = v1.assignable_scopes, description = v1.description, name = v1.name, permissions = v1.permissions, role_definition_id = v1.role_definition_id, scope = v1.scope } }

  role_management_policies = merge([
    for k1, v1 in var.role_definitions : {
      for k2, v2 in coalesce(v1.role_management_policies, {}) :
      "${k1}/${k2}" => merge(v2, {
        role_definition_id = module.role_definitions.role_definitions_id["${k1}"]
      })
    }
  ]...)
}

module "role_definitions" {
  source           = "git::https://github.com/AeternaModules/azurerm_role_definition.git?ref=v4.81.0"
  role_definitions = local.role_definitions
}

module "role_management_policies" {
  source                   = "git::https://github.com/AeternaModules/azurerm_role_management_policy.git?ref=v4.81.0"
  role_management_policies = local.role_management_policies
  depends_on               = [module.role_definitions]
}

