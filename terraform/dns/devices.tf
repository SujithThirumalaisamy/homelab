# Proxmox
resource "dns_a_record_set" "pve1" {
  zone      = "home.isujith.dev."
  name      = "pve1"
  addresses = ["10.0.1.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "pve2" {
  zone      = "home.isujith.dev."
  name      = "pve2"
  addresses = ["10.0.1.2"]
  ttl       = 3600
}

# TP-Link
resource "dns_a_record_set" "omada" {
  zone      = "home.isujith.dev."
  name      = "omada"
  addresses = ["10.0.0.2"]
  ttl       = 3600
}
