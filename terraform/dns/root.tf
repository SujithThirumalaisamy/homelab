resource "dns_a_record_set" "plex" {
  zone      = "home.isujith.dev."
  name      = "plex"
  addresses = ["10.0.40.2"]
  ttl       = 3600
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

