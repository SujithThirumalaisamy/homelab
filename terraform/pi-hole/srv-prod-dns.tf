resource "pihole_dns_record" "srv-prod-1" {
  domain = "srv-prod-1.home.isujith.dev"
  ip     = "10.0.10.1"
}

resource "pihole_dns_record" "srv-prod-2" {
  domain = "srv-prod-2.home.isujith.dev"
  ip     = "10.0.10.2"
}

resource "pihole_dns_record" "srv-prod-3" {
  domain = "srv-prod-3.home.isujith.dev"
  ip     = "10.0.10.3"
}


