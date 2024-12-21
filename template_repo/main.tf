resource "github_repository" "this" {
  name        = "${var.project}-${var.env}"
  description = "${var.project} ${var.env} repository"
  auto_init   = var.auto_init
  visibility = var.env=="dev"? "public": "private"
}
resource "github_repository_file" "gitignore" {
  repository = github_repository.this.name
  branch = local.branch_name
  file= ".gitignore"
  content = local.files[".gitignore"]  
}

resource "github_repository_file" "ReadMe" {
  repository = github_repository.this.name
  branch = local.branch_name
  file= "README.md"
  content = local.files["README.md"]  
}
