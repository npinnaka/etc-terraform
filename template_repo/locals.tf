locals {
  branch_name = "staging"
  files = {
    ".gitignore" = file("templates/gitignore.tpl")
    "README.md" = templatefile("templates/README.md.tpl", {
      repo_name = github_repository.this.name,
      repo_description = github_repository.this.description,
      html_url = github_repository.this.html_url

    })
  }
}
