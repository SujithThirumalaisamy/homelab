terraform {
  required_version = ">= 0.13"
  required_providers {
    pihole = {
      source  = "ryanwholey/pihole"
      version = "0.2.0"
    }
  }
}

variable "pihole_url" {
  type      = string
  sensitive = true
}

variable "pihole_password" {
  type      = string
  sensitive = true
}

provider "pihole" {
  url       = var.pihole_url
  api_token = sha256(sha256(var.pihole_password))
}
