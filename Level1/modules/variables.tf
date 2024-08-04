# variables.tf

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "sre-challenge-flashenpost"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "westeurope"
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default = {
    department = "SRE"
  }
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
  default     = "srechallengesforflaschenpost"
}

variable "account_tier" {
  description = "Storage account tier"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "Replication type"
  type        = string
  default     = "LRS"
}

variable "access_tier" {
  description = "Access tier"
  type        = string
  default     = "Hot"
}

variable "container_name" {
  description = "Name of the storage container"
  type        = string
  default     = "sre"
}

variable "container_access_type" {
  description = "Access type of the storage container"
  type        = string
  default     = "private"
}
