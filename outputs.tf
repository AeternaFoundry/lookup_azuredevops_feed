output "feed_lookup_id" {
  description = "Map of id values across all feed_lookup, keyed the same as var.feed_lookup except keys with no id are omitted"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "feed_lookup_feed_id" {
  description = "Map of feed_id values across all feed_lookup, keyed the same as var.feed_lookup except keys with no feed_id are omitted"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.feed_id if v.feed_id != null && length(v.feed_id) > 0 }
}
output "feed_lookup_name" {
  description = "Map of name values across all feed_lookup, keyed the same as var.feed_lookup except keys with no name are omitted"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "feed_lookup_project_id" {
  description = "Map of project_id values across all feed_lookup, keyed the same as var.feed_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}

