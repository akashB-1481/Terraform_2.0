terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
    }
  }
}

provider "local" {}

resource "local_file" "environment" {
  filename = "./environment.txt"

  content = <<-EOT
    Environment: ${var.environment}
    Owner: ${var.owner}
  EOT
}