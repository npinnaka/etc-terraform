data "github_repository" "backend_repo" {
    name = "backend"
}

data "github_branch" "backend_development" {
  repository = data.github_repository.backend_repo.name
  branch =  data.github_repository.backend_repo.default_branch
}

data "github_tree" "tree" {
    repository = data.github_repository.backend_repo.name
    recursive = true
    tree_sha = data.github_branch.backend_development.sha
}