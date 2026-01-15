# Prod VMs
resource "dns_a_record_set" "srv_prod_1" {
  zone      = "home.isujith.dev."
  name      = "srv-prod-1"
  addresses = ["10.0.10.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_prod_2" {
  zone      = "home.isujith.dev."
  name      = "srv-prod-2"
  addresses = ["10.0.10.2"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_prod_3" {
  zone      = "home.isujith.dev."
  name      = "srv-prod-3"
  addresses = ["10.0.10.3"]
  ttl       = 3600
}

resource "dns_a_record_set" "n8n" {
  zone      = "home.isujith.dev."
  name      = "n8n"
  addresses = ["10.0.10.11"]
  ttl       = 3600
}
