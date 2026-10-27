output "feed_lookup_id" {
  description = "Map of id values across all feed_lookup, keyed the same as var.feed_lookup"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.id }
}
output "feed_lookup_feed_id" {
  description = "Map of feed_id values across all feed_lookup, keyed the same as var.feed_lookup"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.feed_id }
}
output "feed_lookup_name" {
  description = "Map of name values across all feed_lookup, keyed the same as var.feed_lookup"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.name }
}
output "feed_lookup_project_id" {
  description = "Map of project_id values across all feed_lookup, keyed the same as var.feed_lookup"
  value       = { for k, v in data.azuredevops_feed.feed_lookup : k => v.project_id }
}

