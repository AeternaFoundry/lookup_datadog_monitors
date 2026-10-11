output "monitors_lookup_id" {
  description = "Map of id values across all monitors_lookup, keyed the same as var.monitors_lookup except keys with no id are omitted"
  value       = { for k, v in data.datadog_monitors.monitors_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "monitors_lookup_monitor_tags_filter" {
  description = "Map of monitor_tags_filter values across all monitors_lookup, keyed the same as var.monitors_lookup except keys with no monitor_tags_filter are omitted"
  value       = { for k, v in data.datadog_monitors.monitors_lookup : k => v.monitor_tags_filter if v.monitor_tags_filter != null && length(v.monitor_tags_filter) > 0 }
}
output "monitors_lookup_monitors" {
  description = "Map of monitors values across all monitors_lookup, keyed the same as var.monitors_lookup except keys with no monitors are omitted"
  value       = { for k, v in data.datadog_monitors.monitors_lookup : k => v.monitors if v.monitors != null && length(v.monitors) > 0 }
}
output "monitors_lookup_name_filter" {
  description = "Map of name_filter values across all monitors_lookup, keyed the same as var.monitors_lookup except keys with no name_filter are omitted"
  value       = { for k, v in data.datadog_monitors.monitors_lookup : k => v.name_filter if v.name_filter != null && length(v.name_filter) > 0 }
}
output "monitors_lookup_tags_filter" {
  description = "Map of tags_filter values across all monitors_lookup, keyed the same as var.monitors_lookup except keys with no tags_filter are omitted"
  value       = { for k, v in data.datadog_monitors.monitors_lookup : k => v.tags_filter if v.tags_filter != null && length(v.tags_filter) > 0 }
}

