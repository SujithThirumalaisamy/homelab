# Databases
resource "dns_a_record_set" "pg-prod-1" {
  zone      = "home.isujith.dev."
  name      = "pg-prod-1"
  addresses = ["10.0.32.1"]
  ttl       = 3600
}
