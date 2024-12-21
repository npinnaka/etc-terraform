locals {
  branch_name = "staging"
  repos = {
    infra-dev = {
      description = "infra-dev repository"
      auto_init = true
      visibility = "private"
      gitignore_template = "Terraform"
    },
    infra-prod = {
      description = "infra-prod repository"
      auto_init = true
      visibility = "public"
      gitignore_template = "Terraform"
    }
  }
}
