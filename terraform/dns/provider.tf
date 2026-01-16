terraform {
  required_version = ">= 1.10.4"
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "3.4.3"
    }
  }
}

variable "nameserver" {
  type = string
}

variable "tsig_key" {
  type      = string
  sensitive = true
}

provider "dns" {
  update {
    server        = var.nameserver
    key_name      = "home.isujith.dev."
    key_algorithm = "hmac-sha256"
    key_secret    = var.tsig_key
  }
}
