sudo certbot certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials /etc/letsencrypt/cloudflare.ini \
  --key-type rsa \
  --rsa-key-size 2048 \
  -d "omada.home.isujith.dev"
