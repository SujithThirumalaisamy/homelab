terraform {
  required_version = ">= 1.10.4"
  required_providers {
    dns = {
      source  = "hashicorp/dns"
      version = "3.4.2"
    }
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.12.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
  }
}

variable "tsig_key" {
  type      = string
  sensitive = true
}

provider "dns" {
  update {
    server        = "10.0.50.1"
    key_name      = "tsig-key."
    key_algorithm = "hmac-sha256"
    key_secret    = var.tsig_key
  }
}

variable "docker_host_ip" {
  type = string
}

variable "docker_host_username" {
  type = string
}

provider "docker" {
  host = "ssh://${var.docker_host_username}@${var.docker_host_ip}"
}
