resource "cloudflare_dns_record" "root" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "cv" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "cv.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "street-view" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "street-view.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "argo" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "argo.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "argo-grpc" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "grpc.argo.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "contest" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "contest.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "contest-api" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "api.contest.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "omara-api" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "api-omara.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "omara" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "omara.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "ngrok" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.86"
  name    = "*.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}

resource "cloudflare_dns_record" "mandrill" {
  zone_id = var.cloudflare_zone_id
  content = "mandrill_verify.yi94aWK89PU7d7hVDxkPSQ"
  name    = "isujith.dev"
  ttl     = 1
  type    = "TXT"
}

resource "cloudflare_dns_record" "mandrill_mte1" {
  zone_id = var.cloudflare_zone_id
  content = "dkim1.mandrillapp.com"
  name    = "mte1._domainkey.isujith.dev"
  ttl     = 1
  type    = "CNAME"
}

resource "cloudflare_dns_record" "mandrill_mte2" {
  zone_id = var.cloudflare_zone_id
  content = "dkim2.mandrillapp.com"
  name    = "mte2._domainkey.isujith.dev"
  ttl     = 1
  type    = "CNAME"
}

resource "cloudflare_dns_record" "mandrill_dmarc" {
  zone_id = var.cloudflare_zone_id
  content = "v=DMARC1; p=none;"
  name    = "_dmarc.isujith.dev"
  ttl     = 1
  type    = "TXT"
}

resource "cloudflare_dns_record" "yash" {
  zone_id = var.cloudflare_zone_id
  content = "165.227.240.66"
  name    = "yash.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}
