resource "azurerm_storage_account" "sa" {
  resource_group_name              = data.azurerm_resource_group.rg.name
  location                         = data.azurerm_resource_group.rg.location
  name                             = "saunitingiqsrae${var.env}002"
  account_tier                     = "Standard"
  account_replication_type         = "LRS"
  cross_tenant_replication_enabled = true
  default_to_oauth_authentication  = true
  public_network_access_enabled    = true

  tags                             = module.environment.tags
}

data "azurerm_monitor_diagnostic_categories" "sa" {
  resource_id = azurerm_storage_account.sa.id
}

resource "azurerm_monitor_diagnostic_setting" "sa" {
  lifecycle {
    ignore_changes = [
      # make it quiet
      log_analytics_destination_type
    ]
  }

  name                           = azurerm_storage_account.sa.name
  target_resource_id             = azurerm_storage_account.sa.id
  log_analytics_workspace_id     = azurerm_log_analytics_workspace.law.id
  # log_analytics_destination_type = "AzureDiagnostics"

  # don't loop over log_category_groups yet - "allLogs" not yet supported
  dynamic enabled_log {
    for_each = toset(data.azurerm_monitor_diagnostic_categories.sa.log_category_types)
    content {
      category = enabled_log.value
      retention_policy {
        enabled = true
        days    = module.environment.law_retention
      }
    }
  }

  dynamic metric {
    for_each = toset(data.azurerm_monitor_diagnostic_categories.sa.metrics)
    content {
      category = metric.value
      enabled  = true
      retention_policy {
        enabled = true
        days    = module.environment.law_retention
      }
    }
  }
}

resource "azurerm_storage_container" "sa_cost_center" {
  name                 = "cost-center"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_container" "sa_user" {
  name                 = "user"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_container" "sa_profile" {
  name                 = "profile"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_container" "client" {
  name                 = "client"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_container" "ndis" {
  name                 = "ndis"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_container" "pressureinjury" {
  name                 = "pressureinjury"
  storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_role_assignment" "adf_storage_blob_data_contributor" {
  principal_id         = azurerm_data_factory.adf.identity[0].principal_id
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_role_assignment" "sa_reader" {
  for_each             = module.environment.sa_readers
  principal_id         = each.value
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Reader"
}

resource "azurerm_role_assignment" "sa_writer" {
  for_each             = module.environment.sa_writers
  principal_id         = each.value
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_role_assignment" "la_writer" {
  principal_id         = azurerm_logic_app_standard.consolidated.identity[0].principal_id
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_role_assignment" "fa_writer" {
  principal_id         = azurerm_windows_function_app.fa-001.identity[0].principal_id
  scope                = azurerm_storage_account.sa.id
  role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_storage_account" "fa_sa" {
  resource_group_name              = data.azurerm_resource_group.rg.name
  location                         = data.azurerm_resource_group.rg.location
  name                             = "saunitingiqsrae${var.env}004"
  account_tier                     = "Standard"
  account_replication_type         = "LRS"
  cross_tenant_replication_enabled = true
  default_to_oauth_authentication  = true
  public_network_access_enabled    = true

  tags                             = module.environment.tags
}

data "azurerm_monitor_diagnostic_categories" "fa_sa" {
  resource_id = azurerm_storage_account.fa_sa.id
}

resource "azurerm_monitor_diagnostic_setting" "fa_sa" {
  lifecycle {
    ignore_changes = [
      # make it quiet
      log_analytics_destination_type
    ]
  }

  name                           = azurerm_storage_account.fa_sa.name
  target_resource_id             = azurerm_storage_account.fa_sa.id
  log_analytics_workspace_id     = azurerm_log_analytics_workspace.law.id
  # log_analytics_destination_type = "AzureDiagnostics"

  # don't loop over log_category_groups yet - "allLogs" not yet supported
  dynamic enabled_log {
    for_each = toset(data.azurerm_monitor_diagnostic_categories.fa_sa.log_category_types)
    content {
      category = enabled_log.value
      retention_policy {
        enabled = true
        days    = module.environment.law_retention
      }
    }
  }

  dynamic metric {
    for_each = toset(data.azurerm_monitor_diagnostic_categories.fa_sa.metrics)
    content {
      category = metric.value
      enabled  = true
      retention_policy {
        enabled = true
        days    = module.environment.law_retention
      }
    }
  }
}

resource "azurerm_role_assignment" "fa_storage_blob_data_contributor" {
  principal_id         = azurerm_windows_function_app.fa-001.identity[0].principal_id
  scope                = azurerm_storage_account.fa_sa.id
  role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_storage_account" "la_sa" {
  resource_group_name              = data.azurerm_resource_group.rg.name
  location                         = data.azurerm_resource_group.rg.location
  name                             = "saunitingiqsrae${var.env}003"
  account_tier                     = "Standard"
  account_replication_type         = "LRS"
  cross_tenant_replication_enabled = true
  default_to_oauth_authentication  = true
  public_network_access_enabled    = true

  tags                             = module.environment.tags
}

data "azurerm_monitor_diagnostic_categories" "la_sa" {
  resource_id = azurerm_storage_account.la_sa.id
}

resource "azurerm_monitor_diagnostic_setting" "la_sa" {
  lifecycle {
    ignore_changes = [
      # make it quiet
      log_analytics_destination_type
    ]
  }

  name                           = azurerm_storage_account.la_sa.name
  target_resource_id             = azurerm_storage_account.la_sa.id
  log_analytics_workspace_id     = azurerm_log_analytics_workspace.law.id
  # log_analytics_destination_type = "AzureDiagnostics"

  # don't loop over log_category_groups yet - "allLogs" not yet supported
  dynamic enabled_log {
    for_each = toset(data.azurerm_monitor_diagnostic_categories.la_sa.log_category_types)
    content {
      category = enabled_log.value
      retention_policy {
        enabled = true
        days    = module.environment.law_retention
      }
    }
  }

  dynamic metric {
    for_each = toset(data.azurerm_monitor_diagnostic_categories.la_sa.metrics)
    content {
      category = metric.value
      enabled  = true
      retention_policy {
        enabled = true
        days    = module.environment.law_retention
      }
    }
  }
}

resource "azurerm_role_assignment" "la_storage_blob_data_contributor" {
  principal_id         = azurerm_logic_app_standard.consolidated.identity[0].principal_id
  scope                = azurerm_storage_account.la_sa.id
  role_definition_name = "Storage Blob Data Contributor"
}

resource "azurerm_role_assignment" "adf_to_la_storage_blob_data_contributor" {
  principal_id         = azurerm_data_factory.adf.identity[0].principal_id
  scope                = azurerm_storage_account.la_sa.id
  role_definition_name = "Storage Blob Data Contributor"
}
