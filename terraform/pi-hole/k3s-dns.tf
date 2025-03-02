resource "pihole_dns_record" "km-prod-1" {
  domain = "km-prod-1.home.isujith.dev"
  ip     = "10.0.50.1"
}

resource "pihole_dns_record" "km-prod-2" {
  domain = "km-prod-2.home.isujith.dev"
  ip     = "10.0.50.2"
}

resource "pihole_dns_record" "kn-prod-1" {
  domain = "kn-prod-1.home.isujith.dev"
  ip     = "10.0.51.1"
}

resource "pihole_dns_record" "kn-prod-2" {
  domain = "kn-prod-1.home.isujith.dev"
  ip     = "10.0.51.2"
}

resource "pihole_dns_record" "kn-prod-3" {
  domain = "kn-prod-1.home.isujith.dev"
  ip     = "10.0.51.3"
}

