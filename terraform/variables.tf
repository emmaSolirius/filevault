variable "base_name" {
  default = "filevault-tf"
}

variable "location" {
  default = "westus2"
}

variable "appId" {
  description = "Azure Kubernetes Service Cluster service principal"
}

variable "password" {
  description = "Azure Kubernetes Service Cluster password"
}

variable "client_id" {
}

variable "client_secret" {
}

variable "tenant_id" {
}

variable "subscription_id" {
}
