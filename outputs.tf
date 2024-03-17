output "resource_group_name" {
  value = module.resource-group.rg_name
}

output "virtual_network_name" {
  value = module.network.vnet_name
}

output "storage_account_name" {
  value = module.storage-account.storage_account_name
}

output "function_app_name" {
  value = module.function-app.function_app_name
}
