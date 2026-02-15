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

resource "dns_cname_record" "kestra" {
  zone  = "home.isujith.dev."
  name  = "kestra"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_a_record_set" "traefik" {
  zone      = "home.isujith.dev."
  name      = "traefik"
  addresses = ["10.0.60.10"]
  ttl       = 3600
}

# resource "dns_a_record_set" "infisical" {
#   zone      = "home.isujith.dev."
#   name      = "infisical"
#   addresses = ["10.0.250.5"]
#   ttl       = 3600
# }

resource "dns_cname_record" "infisical" {
  zone  = "home.isujith.dev."
  name  = "infisical"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "harbor" {
  zone  = "home.isujith.dev."
  name  = "harbor"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "dex" {
  zone  = "home.isujith.dev."
  name  = "dex"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "cv" {
  zone  = "home.isujith.dev."
  name  = "cv"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "cv-dev" {
  zone  = "home.isujith.dev."
  name  = "cv-dev"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}

resource "dns_cname_record" "wisecow" {
  zone  = "home.isujith.dev."
  name  = "wisecow"
  cname = "traefik.home.isujith.dev."
  ttl   = 3600
}
