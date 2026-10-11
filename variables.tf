variable "servicecatalog_service_actions" {
  description = <<EOT
Map of servicecatalog_service_actions, attributes below
Required:
    - name
    - definition (block):
        - assume_role (optional)
        - name (required)
        - parameters (optional)
        - type (optional)
        - version (required)
Optional:
    - accept_language
    - description
    - region
EOT

  type = map(object({
    name            = string
    accept_language = optional(string)
    description     = optional(string)
    region          = optional(string)
    definition = object({
      assume_role = optional(string)
      name        = string
      parameters  = optional(string)
      type        = optional(string)
      version     = string
    })
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

