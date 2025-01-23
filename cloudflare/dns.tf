resource "cloudflare_dns_record" "cv" {
  zone_id = var.cloudflare_zone_id
  content = "212.2.243.234"
  name    = "cv.isujith.dev"
  proxied = true
  ttl     = 1
  type    = "A"
}
