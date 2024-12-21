resource "github_repository" "this" {
  for_each = local.repos
  name               = each.key
  description        = local.repos[each.key]["description"]
  auto_init          = local.repos[each.key]["auto_init"]
  visibility         = local.repos[each.key]["visibility"]
  gitignore_template = local.repos[each.key]["gitignore_template"]
}

resource "github_branch" "this" {
  for_each = github_repository.this
  repository = github_repository.this[each.key].name
  branch     = local.branch_name
}
