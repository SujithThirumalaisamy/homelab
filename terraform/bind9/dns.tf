resource "time_sleep" "wait_for_bind9" {
  depends_on      = [docker_container.bind9]
  create_duration = "10s"
}

resource "dns_a_record_set" "srv-prod-1" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "srv-prod-1"
  addresses  = ["10.0.10.1"]
  ttl        = 3600
}

resource "dns_a_record_set" "srv-prod-2" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "srv-prod-2"
  addresses  = ["10.0.10.2"]
  ttl        = 3600
}

resource "dns_a_record_set" "srv-prod-3" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "srv-prod-3"
  addresses  = ["10.0.10.3"]
  ttl        = 3600
}

resource "dns_a_record_set" "srv-demo-1" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "srv-demo-1"
  addresses  = ["10.0.20.1"]
  ttl        = 3600
}

resource "dns_a_record_set" "srv-demo-2" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "srv-demo-2"
  addresses  = ["10.0.20.2"]
  ttl        = 3600
}

resource "dns_a_record_set" "srv-demo-3" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "srv-demo-3"
  addresses  = ["10.0.20.3"]
  ttl        = 3600
}

resource "dns_a_record_set" "plex" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "plex"
  addresses  = ["10.0.30.1"]
  ttl        = 3600
}

resource "dns_a_record_set" "nas" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "nas"
  addresses  = ["10.0.30.2"]
  ttl        = 3600
}

resource "dns_a_record_set" "ns" {
  depends_on = [time_sleep.wait_for_bind9]
  zone       = "isujith.dev."
  name       = "ns"
  addresses  = ["10.0.50.1"]
  ttl        = 3600
}
