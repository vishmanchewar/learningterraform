provider "github" {
token = "<Update GIT PAT TOKEN HERE>"
}

resource "github_repository" "terraform-repo" {
  name        = "first-terraform-repo"
  description = "Testing Terraform 1st"

  visibility = "public"
  auto_init = true

}
