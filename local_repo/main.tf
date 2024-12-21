resource "github_repository" "this" {
  name               = local.name
  description        = local.description
  auto_init          = local.auto_init
  visibility         = local.visibility
  gitignore_template = local.gitignore_template
}

resource "github_branch" "this" {
  repository = github_repository.this.name
  branch     = local.branch_name
}
