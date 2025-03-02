resource "pihole_dns_record" "srv-demo-1" {
  domain = "srv-demo-1.home.isujith.dev"
  ip     = "10.0.20.1"
}

resource "pihole_dns_record" "srv-demo-2" {
  domain = "srv-demo-2.home.isujith.dev"
  ip     = "10.0.20.2"
}

resource "pihole_dns_record" "srv-demo-3" {
  domain = "srv-demo-3.home.isujith.dev"
  ip     = "10.0.20.3"
}


