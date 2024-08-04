# modules/storage_container/variables.tf

variable "name" {
  description = "Name of the storage container"
  type        = string
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = string
}

variable "container_access_type" {
  description = "Access type of the storage container"
  type        = string
}
