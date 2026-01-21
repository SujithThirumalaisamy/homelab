# K3s Services
resource "dns_cname_record" "argo" {
  zone  = "home.isujith.dev."
  name  = "argo"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "homepage" {
  zone  = "home.isujith.dev."
  name  = "homepage"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "jenkins" {
  zone  = "home.isujith.dev."
  name  = "jenkins"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_a_record_set" "pg_semaphore" {
  zone      = "home.isujith.dev."
  name      = "pg-semaphore"
  addresses = ["10.0.60.11"]
  ttl       = 3600
}

resource "dns_cname_record" "semaphore" {
  zone  = "home.isujith.dev."
  name  = "semaphore"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_a_record_set" "traefik" {
  zone      = "home.isujith.dev."
  name      = "traefik"
  addresses = ["10.0.60.10"]
  ttl       = 3600
}

resource "dns_a_record_set" "jobs" {
  zone      = "home.isujith.dev."
  name      = "jobs"
  addresses = ["10.0.60.10"]
  ttl       = 3600
}
