output "servicecatalog_service_actions_id" {
  description = "Map of id values across all servicecatalog_service_actions, keyed the same as var.servicecatalog_service_actions"
  value       = { for k, v in aws_servicecatalog_service_action.servicecatalog_service_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "servicecatalog_service_actions_accept_language" {
  description = "Map of accept_language values across all servicecatalog_service_actions, keyed the same as var.servicecatalog_service_actions"
  value       = { for k, v in aws_servicecatalog_service_action.servicecatalog_service_actions : k => v.accept_language if v.accept_language != null && length(v.accept_language) > 0 }
}
output "servicecatalog_service_actions_definition" {
  description = "Map of definition values across all servicecatalog_service_actions, keyed the same as var.servicecatalog_service_actions"
  value       = { for k, v in aws_servicecatalog_service_action.servicecatalog_service_actions : k => one(v.definition) if v.definition != null && length(v.definition) > 0 }
}
output "servicecatalog_service_actions_description" {
  description = "Map of description values across all servicecatalog_service_actions, keyed the same as var.servicecatalog_service_actions"
  value       = { for k, v in aws_servicecatalog_service_action.servicecatalog_service_actions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "servicecatalog_service_actions_name" {
  description = "Map of name values across all servicecatalog_service_actions, keyed the same as var.servicecatalog_service_actions"
  value       = { for k, v in aws_servicecatalog_service_action.servicecatalog_service_actions : k => v.name if v.name != null && length(v.name) > 0 }
}
output "servicecatalog_service_actions_region" {
  description = "Map of region values across all servicecatalog_service_actions, keyed the same as var.servicecatalog_service_actions"
  value       = { for k, v in aws_servicecatalog_service_action.servicecatalog_service_actions : k => v.region if v.region != null && length(v.region) > 0 }
}

