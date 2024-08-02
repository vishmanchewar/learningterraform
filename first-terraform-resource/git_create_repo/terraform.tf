provider "github" {
token = "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"
}

resource "github_repository" "terraform-repo" {
  name        = "first-terraform-repo"
  description = "Testing Terraform 1st"

  visibility = "public"
  auto_init = true

}
