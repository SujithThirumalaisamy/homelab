terraform {
  required_version = ">= 1.10.4"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
    hcp = {
      source  = "hashicorp/hcp"
      version = "~> 0.91.0"
    }
  }
}

provider "docker" {}
provider "hcp" {
  project_id = "8ac94fa6-e68f-4dff-a7b2-84103548dbf0"
}

data "hcp_vault_secrets_app" "secret-manager" {
  app_name = "secret-manager"
}
