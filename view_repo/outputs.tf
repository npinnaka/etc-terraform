output "URL" {
  value = {
  HTTP = data.github_repository.backend_repo.http_clone_url
  SSH = data.github_repository.backend_repo.ssh_clone_url
  }
}

output "Login" {
  value = split("/",data.github_repository.backend_repo.full_name)[0]
}
