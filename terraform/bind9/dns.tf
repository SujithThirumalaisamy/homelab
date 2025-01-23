resource "dns_a_record_set" "srv-prod-1" {
  zone = "isujith.dev."
  name = "srv-prod-1"
  addresses = ["10.10.0.1"]
  ttl = 3600
}

resource "dns_a_record_set" "srv-prod-2" {
  zone = "isujith.dev."
  name = "srv-prod-2"
  addresses = ["10.10.0.2"]
  ttl = 3600
}

resource "dns_a_record_set" "srv-prod-3" {
  zone = "isujith.dev."
  name = "srv-prod-3"
  addresses = ["10.10.0.3"]
  ttl = 3600
}

resource "dns_a_record_set" "srv-demo-1" {
  zone = "isujith.dev."
  name = "srv-demo-1"
  addresses = ["10.20.0.1"]
  ttl = 3600
}

resource "dns_a_record_set" "srv-demo-2" {
  zone = "isujith.dev."
  name = "srv-demo-2"
  addresses = ["10.20.0.2"]
  ttl = 3600
}

resource "dns_a_record_set" "srv-demo-3" {
  zone = "isujith.dev."
  name = "srv-demo-3"
  addresses = ["10.20.0.3"]
  ttl = 3600
}

resource "dns_a_record_set" "plex" {
  zone = "isujith.dev."
  name = "plex"
  addresses = ["10.30.0.1"]
  ttl = 3600
}

resource "dns_a_record_set" "nas" {
  zone = "isujith.dev."
  name = "nas"
  addresses = ["10.30.0.2"]
  ttl = 3600
}

resource "dns_a_record_set" "ns" {
  zone = "isujith.dev."
  name = "ns"
  addresses = ["10.30.0.99"]
  ttl = 3600
}
