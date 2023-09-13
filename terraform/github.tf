resource "github_repository" "batcave" {
  name        = "batcave"
  description = "All infrastructure and configuration for my homelab (aka batcave)."

  visibility   = "public"
  has_issues   = true
  has_projects = true
}

resource "github_repository_project" "todo" {
  name       = "TODO"
  repository = github_repository.batcave.name
  body       = "General todo list for my homelab."
}
