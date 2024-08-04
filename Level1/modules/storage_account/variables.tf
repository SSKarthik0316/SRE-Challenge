# modules/storage_account/variables.tf

variable "name" {
  description = "Name of the storage account"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
}

variable "account_replication_type" {
  description = "Replication type"
  type        = string
}

variable "access_tier" {
  description = "Access tier"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}
