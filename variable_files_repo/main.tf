resource "github_repository" "backend_repo" {
  name        = "${var.project}-${var.env}"
  description = "${var.project} ${var.env} repository"
  auto_init   = var.auto_init
  gitignore_template = var.gitignore
}

