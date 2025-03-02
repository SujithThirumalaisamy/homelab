resource "pihole_dns_record" "plex" {
  domain = "plex.home.isujith.dev"
  ip     = "10.0.70.1"
}

resource "pihole_dns_record" "nas" {
  domain = "nas.home.isujith.dev"
  ip     = "10.0.70.2"
}

resource "pihole_dns_record" "ns" {
  domain = "ns.home.isujith.dev"
  ip     = "10.0.253.253"
}

resource "pihole_dns_record" "semaphore" {
  domain = "semaphore.home.isujith.dev"
  ip     = "10.0.60.10"
}
