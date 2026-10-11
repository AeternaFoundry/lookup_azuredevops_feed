data "azuredevops_feed" "feed_lookup" {
  for_each = var.feed_lookup

  feed_id    = each.value.feed_id
  name       = each.value.name
  project_id = each.value.project_id

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

