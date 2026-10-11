output "kibana_spaces_lookup_id" {
  description = "Map of id values across all kibana_spaces_lookup, keyed the same as var.kibana_spaces_lookup except keys with no id are omitted"
  value       = { for k, v in data.elasticstack_kibana_spaces.kibana_spaces_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_spaces_lookup_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_spaces_lookup, keyed the same as var.kibana_spaces_lookup except keys with no kibana_connection are omitted"
  value       = { for k, v in data.elasticstack_kibana_spaces.kibana_spaces_lookup : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_spaces_lookup_spaces" {
  description = "Map of spaces values across all kibana_spaces_lookup, keyed the same as var.kibana_spaces_lookup except keys with no spaces are omitted"
  value       = { for k, v in data.elasticstack_kibana_spaces.kibana_spaces_lookup : k => v.spaces if v.spaces != null && length(v.spaces) > 0 }
}

