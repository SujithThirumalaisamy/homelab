# Demo VMs
resource "dns_a_record_set" "srv_demo_1" {
  zone      = "home.isujith.dev."
  name      = "srv-demo-1"
  addresses = ["10.0.20.1"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_demo_2" {
  zone      = "home.isujith.dev."
  name      = "srv-demo-2"
  addresses = ["10.0.20.2"]
  ttl       = 3600
}

resource "dns_a_record_set" "srv_demo_3" {
  zone      = "home.isujith.dev."
  name      = "srv-demo-3"
  addresses = ["10.0.20.3"]
  ttl       = 3600
}

