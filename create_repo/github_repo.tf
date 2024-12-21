resource "github_repository" "backend_repo" {
  name        = "backend"
  description = "backend Repo"
  auto_init = true
}

resource "github_branch" "backend_development" {
    repository = github_repository.backend_repo.name
    branch = "development"
}

resource "github_repository" "frontend_repo" {
  name        = "frontend"
  description = "frontend Repo"

  auto_init = true
  depends_on = [ github_branch.backend_development ]
}

resource "github_branch" "frontend_development" {
    repository = github_repository.frontend_repo.name
    branch = "development"
}