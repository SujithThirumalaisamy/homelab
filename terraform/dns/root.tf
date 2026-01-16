resource "dns_cname_record" "plex" {
  zone  = "home.isujith.dev."
  name  = "plex"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_a_record_set" "nas" {
  zone      = "home.isujith.dev."
  name      = "nas"
  addresses = ["10.0.40.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "ns" {
  zone      = "home.isujith.dev."
  name      = "ns"
  addresses = ["10.0.253.253"]
  ttl       = 3600
}

