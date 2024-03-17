variable "location" {
  description = "The Azure region where all resources in this configuration should be created."
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create all resources."
  type        = string
  default     = "clalit-exam-rg"
}

variable "vnet_address_space" {
  description = "The address space that is used by the virtual network."
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "clalitexamstorage"
}

variable "function_app_name" {
  description = "The name of the function app."
  type        = string
  default     = "clalit-exam-functionapp"
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan to be used by the Function App."
  type        = string
  # Assuming you have an existing App Service Plan; otherwise, this would also be created via Terraform and referenced here.
  default     = "/subscriptions//resourceGroups/<rg-name>/providers/Microsoft.Web/serverfarms/<app-service-plan-name>"
}

variable "log_analytics_workspace_id" {
  description = "The ID of the Log Analytics Workspace to be used for diagnostics."
  type        = string
  # Assuming you have an existing Log Analytics Workspace; otherwise, this would also be created via Terraform and referenced here.
  default     = "/subscriptions/<subscription-id>/resourceGroups/<rg-name>/providers/Microsoft.OperationalInsights/workspaces/<workspace-name>"
}

variable "private_endpoint_subnet_id" {
  description = "The ID of the subnet for the private endpoint."
  type        = string
  # This would typically depend on the subnet you create as part of your network configuration.
  default     = "/subscriptions/<subscription-id>/resourceGroups/clalit-exam-rg/providers/Microsoft.Network/virtualNetworks/clalit-exam-vnet/subnets/clalit-exam-subnet"
}
