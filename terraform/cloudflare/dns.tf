resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "cv" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "cv.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "e2e-messenger" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "e2e-messenger.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "uk" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "uk.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "argo" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
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

resource "cloudflare_dns_record" "meet" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "meet.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "discord" {
  zone_id = var.cloudflare_zone_id
  content = "dh=ae86f380afa461843a109b2bced4a3b8484b842a"
  name    = "_discord.isujith.dev"
  ttl     = 3600
  type    = "TXT"
}

resource "cloudflare_dns_record" "website" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "website.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "openvpn" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.245.37"
  name    = "openvpn.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "plex" {
  zone_id = var.cloudflare_zone_id
  content = "10.0.60.10"
  name    = "plex.home.isujith.dev"
  proxied = false
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "vs-fe" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "vs-fe.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}

resource "cloudflare_dns_record" "vs-be" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.254.75"
  name    = "vs-fe.isujith.dev"
  proxied = true
  ttl     = 3600
  type    = "A"
}
