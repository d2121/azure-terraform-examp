resource "azurerm_monitor_diagnostic_setting" "example" {
  name                       = "example-setting"
  target_resource_id         = var.resource_id
  log_analytics_workspace_id = var.log_analytics_workspace_id

  log {
    category = "FunctionExecutionLogs"
    enabled  = true

    retention_policy {
      enabled = false
      days    = 0
    }
  }

  metric {
    category = "AllMetrics"
    enabled  = true

    retention_policy {
      enabled = false
      days    = 0
    }
  }
}
