# main.tf

terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

module "storage_account" {
  source                  = "./modules/storage_account"
  name                    = var.storage_account_name
  resource_group_name     = module.resource_group.name
  location                = module.resource_group.location
  account_tier            = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier             = var.access_tier
  tags                    = var.tags
}

module "storage_container" {
  source                = "./modules/storage_container"
  name                  = var.container_name
  storage_account_name  = module.storage_account.name
  container_access_type = var.container_access_type
}







