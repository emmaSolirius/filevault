variable "base_name" {
  default     = "filevault-terraform"
  type        = string
  description = "The base name for all resources"
}

variable "base_name_alphanumeric" {
  default     = "filevaultterraform"
  type        = string
  description = "The base name for all resources in alphanumeric-only format"

  validation {
    condition     = can(regex("^[a-zA-Z0-9]+$", var.base_name_alphanumeric))
    error_message = "base_name_alphanumeric must contain alphanumeric characters only"
  }
}

variable "location" {
  default     = "westus2"
  type        = string
  description = "The resource location"
}

variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
  type        = string
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
  type        = string
}

variable "client_id" {
}

variable "client_secret" {
}

variable "tenant_id" {
}

variable "subscription_id" {
}
