# K3s Master
resource "dns_a_record_set" "km_prod_1" {
  zone      = "home.isujith.dev."
  name      = "km-prod-1"
  addresses = ["10.0.50.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "km_prod_2" {
  zone      = "home.isujith.dev."
  name      = "km-prod-2"
  addresses = ["10.0.50.2"]
  ttl       = 3600
}

# K3s Node
resource "dns_a_record_set" "kn_prod_1" {
  zone      = "home.isujith.dev."
  name      = "kn-prod-1"
  addresses = ["10.0.51.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "kn_prod_2" {
  zone      = "home.isujith.dev."
  name      = "kn-prod-2"
  addresses = ["10.0.51.2"]
  ttl       = 3600
}

resource "dns_a_record_set" "kn_prod_3" {
  zone      = "home.isujith.dev."
  name      = "kn-prod-3"
  addresses = ["10.0.51.3"]
  ttl       = 3600
}


