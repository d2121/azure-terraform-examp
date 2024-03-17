terraform {
  backend "azurerm" {
    resource_group_name  = "TerraformStateRG"
    storage_account_name = "terraformstatestorageacc"
    container_name       = "tfstate"
    key                  = "clalit-azure-exam.tfstate"
  }
}
