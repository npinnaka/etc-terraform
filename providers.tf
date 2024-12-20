terraform {
    required_version = "~> 1.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = ">= 6.2"
    }
  }
}

# Configure the GitHub Provider
provider "github" {}

# Add a user to the organization
resource "github_membership" "membership_for_user_x" {
 username = "npinnaka"
}
