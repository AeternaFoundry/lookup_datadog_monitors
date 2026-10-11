data "datadog_monitors" "monitors_lookup" {
  for_each = var.monitors_lookup

  monitor_tags_filter = each.value.monitor_tags_filter
  name_filter         = each.value.name_filter
  tags_filter         = each.value.tags_filter
}

