resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "cv" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "cv.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "uk" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "uk.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "argo" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "argo.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "prometheus" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "prometheus.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "grafana" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "grafana.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "mandrill" {
  zone_id = var.cloudflare_zone_id
  content = "mandrill_verify.yi94aWK89PU7d7hVDxkPSQ"
  name    = "isujith.dev"
  ttl     = 3600
  type    = "TXT"
}

resource "cloudflare_dns_record" "mandrill_mte1" {
  zone_id = var.cloudflare_zone_id
  content = "dkim1.mandrillapp.com"
  name    = "mte1._domainkey.isujith.dev"
  ttl     = 3600
  type    = "CNAME"
}

resource "cloudflare_dns_record" "mandrill_mte2" {
  zone_id = var.cloudflare_zone_id
  content = "dkim2.mandrillapp.com"
  name    = "mte2._domainkey.isujith.dev"
  ttl     = 3600
  type    = "CNAME"
}

resource "cloudflare_dns_record" "mandrill_dmarc" {
  zone_id = var.cloudflare_zone_id
  content = "v=DMARC1; p=none;"
  name    = "_dmarc.isujith.dev"
  ttl     = 3600
  type    = "TXT"
}

resource "cloudflare_dns_record" "discord" {
  zone_id = var.cloudflare_zone_id
  content = "dh=ae86f380afa461843a109b2bced4a3b8484b842a"
  name    = "_discord.isujith.dev"
  ttl     = 3600
  type    = "TXT"
}

resource "cloudflare_dns_record" "wisecow" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "wisecow.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "e2e" {
  zone_id = var.cloudflare_zone_id
  content = "172.232.99.150"
  name    = "e2e.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}
