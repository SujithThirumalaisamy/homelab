# LXC Services
resource "dns_a_record_set" "nginx" {
  zone      = "home.isujith.dev."
  name      = "nginx"
  addresses = ["10.0.99.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "homeassistant" {
  zone      = "home.isujith.dev."
  name      = "homeassistant"
  addresses = ["10.0.5.1"]
  ttl       = 3600
}
