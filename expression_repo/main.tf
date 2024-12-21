resource "github_repository" "this" {
  name        = "${var.project}-${var.env}"
  description = "${var.project} ${var.env} repository"
  auto_init   = var.auto_init
  visibility = var.env=="dev"? "public": "private"
  gitignore_template = var.project =="infrastructure"? "Terraform": var.project =="backend"?"Python": "Node"
}

resource "github_branch" "this" {
  repository = github_repository.this.name
  branch     = "staging"
}
