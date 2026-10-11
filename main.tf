resource "aws_servicecatalog_service_action" "servicecatalog_service_actions" {
  for_each = var.servicecatalog_service_actions

  name            = each.value.name
  accept_language = each.value.accept_language
  description     = each.value.description
  region          = each.value.region

  definition {
    assume_role = each.value.definition.assume_role
    name        = each.value.definition.name
    parameters  = each.value.definition.parameters
    type        = each.value.definition.type
    version     = each.value.definition.version
  }
}

