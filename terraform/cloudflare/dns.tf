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
