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
