variable "dataset_id" {
  description = "Unique ID for the dataset being provisioned."
}

variable "dataset_name" {
  description = "Friendly name for the dataset being provisioned."
}

variable "description" {
  description = "Dataset description."
}

variable "location" {
  description = "The regional location for the dataset only US and EU are allowed in module"
  default     = "US"
}

variable "project_id" {
  description = "Project where the dataset and table are created"
}

variable "default_table_expiration_ms" {
  description = "TTL of tables using the dataset in MS"
  default     = null
}