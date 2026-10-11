variable "monitors_lookup" {
  description = <<EOT
Map of monitors_lookup, attributes below
Optional:
    - monitor_tags_filter
    - name_filter
    - tags_filter
EOT

  type = map(object({
    monitor_tags_filter = optional(list(string))
    name_filter         = optional(string)
    tags_filter         = optional(list(string))
  }))
}

