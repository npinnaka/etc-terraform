variable "project" {
  type        = string
  description = "project name"
  validation {
    condition     = contains(["frontend", "backend", "infrastructure"], var.project)
    error_message = "frontend, backend and infrastructure are only allowed values"

  }
}

variable "env" {
  type        = string
  description = "project environment"
  default     = "dev"
   validation {
    condition     = contains(["dev", "prod"], var.env)
    error_message = "dev and prod are only allowed values"

  }
}

variable "auto_init" {
  type        = bool
  default = true
  description = "Auto initialize the repo"
}

variable "gitignore" {
  type    = string
  default = "Terraform"
  validation {
    error_message = "Terraform, Python, or Node. are only allowed values"
    condition     = contains(["Terraform", "Python", "Node"], var.gitignore)
  }
}
