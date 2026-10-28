variable "environment" {
  type        = string
  description = "Deployment environment"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod."
  }
}

variable "owner" {
  type        = string
  description = "Owner of the infrastructure"
}

# Created without the default value so it can use the .tfvars file for input.


variable "instance_count" {
  type        = number
  description = "Number of application instances"
  default     = 2

  validation {
    condition     = var.instance_count >= 1 && var.instance_count <= 5
    error_message = "Instance count must be between 1 and 5."
  }
}

variable "enable_monitoring" {
  type        = bool
  description = "Whether monitoring is enabled"
  default     = true
}