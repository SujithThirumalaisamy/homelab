resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "cv" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "cv.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "uk" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "uk.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "argo" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "argo.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "prometheus" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "prometheus.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "grafana" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
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

resource "cloudflare_dns_record" "plex" {
  zone_id = var.cloudflare_zone_id
  content = "10.0.60.10"
  name    = "plex.home.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}
