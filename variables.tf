variable "role_definitions" {
  description = <<EOT
Map of role_definitions, attributes below
Required:
    - name
    - scope
Optional:
    - assignable_scopes
    - description
    - role_definition_id
    - permissions (block)
Nested role_management_policies (azurerm_role_management_policy):
    Required:
        - scope
    Optional:
        - activation_rules (block)
        - active_assignment_rules (block)
        - eligible_assignment_rules (block)
        - notification_rules (block)
EOT

  type = map(object({
    name               = string
    scope              = string
    assignable_scopes  = optional(list(string))
    description        = optional(string)
    role_definition_id = optional(string)
    permissions = optional(list(object({
      actions          = optional(list(string))
      data_actions     = optional(set(string))
      not_actions      = optional(list(string))
      not_data_actions = optional(set(string))
    })))
    role_management_policies = optional(map(object({
      scope = string
      activation_rules = optional(object({
        approval_stage = optional(object({
          primary_approver = list(object({
            object_id = string
            type      = string
          }))
        }))
        maximum_duration                                   = optional(string)
        require_approval                                   = optional(bool)
        require_justification                              = optional(bool)
        require_multifactor_authentication                 = optional(bool)
        require_ticket_info                                = optional(bool)
        required_conditional_access_authentication_context = optional(string)
      }))
      active_assignment_rules = optional(object({
        expiration_required                = optional(bool)
        expire_after                       = optional(string)
        require_justification              = optional(bool)
        require_multifactor_authentication = optional(bool)
        require_ticket_info                = optional(bool)
      }))
      eligible_assignment_rules = optional(object({
        expiration_required = optional(bool)
        expire_after        = optional(string)
      }))
      notification_rules = optional(object({
        active_assignments = optional(object({
          admin_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
          approver_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
          assignee_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
        }))
        eligible_activations = optional(object({
          admin_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
          approver_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
          assignee_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
        }))
        eligible_assignments = optional(object({
          admin_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
          approver_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
          assignee_notifications = optional(object({
            additional_recipients = optional(set(string))
            default_recipients    = bool
            notification_level    = string
          }))
        }))
      }))
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.role_definitions) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.role_definitions : [for kk in keys(coalesce(v0.role_management_policies, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
