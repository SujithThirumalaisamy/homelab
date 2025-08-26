resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.250.163"
  name    = "isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "cv" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.250.163"
  name    = "cv.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "uk" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.250.163"
  name    = "uk.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "argo" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.250.163"
  name    = "argo.isujith.dev"
  proxied = true
  ttl     = 3600
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

resource "cloudflare_dns_record" "subly-api" {
  zone_id = var.cloudflare_zone_id
  content = "api.subly.fun"
  name    = "subly-api.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "CNAME"
}

resource "cloudflare_dns_record" "kk-sdat" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.250.163"
  name    = "kk-sdat.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "api-kk-sdat" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.250.163"
  name    = "api-kk-sdat.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "convonite" {
  zone_id = var.cloudflare_zone_id
  content = "catalyst.cs.zohohost.in"
  name    = "convonite"
  ttl     = 3600
  type    = "CNAME"
}

resource "cloudflare_dns_record" "convonite_ssl" {
  zone_id = var.cloudflare_zone_id
  content = "catalyst.cs.zohohost.in"
  name    = "5100d9dea47fd6a2cd4ef7029135b29a.convonite"
  ttl     = 3600
  type    = "CNAME"
}
