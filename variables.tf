variable "feed_lookup" {
  description = <<EOT
Map of feed_lookup, attributes below
Optional:
    - feed_id
    - name
    - project_id
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    feed_id    = optional(string)
    name       = optional(string)
    project_id = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.feed_lookup : (
        v.name == null || (length(trimspace(v.name)) > 0)
      )
    ])
    error_message = "must not be empty or only whitespace"
  }
  validation {
    condition = alltrue([
      for k, v in var.feed_lookup : (
        v.feed_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.feed_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.feed_lookup : (
        v.project_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.project_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
}

