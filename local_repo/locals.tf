locals {
  name               = "${var.project}-${var.env}"
  description        = "${var.project} ${var.env} repository"
  auto_init          = var.auto_init
  visibility         = var.env == "dev" ? "private" : "public"
  gitignore_template = "Terraform"
  branch_name = "staging"
}
