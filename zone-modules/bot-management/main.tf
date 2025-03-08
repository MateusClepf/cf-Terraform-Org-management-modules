# main.tf
resource "cloudflare_zone_settings_override" "this" {
  zone_id = var.zone_id
  settings {
    always_use_https            = "on"
    browser_cache_ttl           = 0
    browser_check               = "on"
    http2                       = "on"
    h2_prioritization           = "off"
    http3                       = "off"
    image_resizing              = "on"
    ip_geolocation              = "on"
    ipv6                        = "on"
    mirage                      = "on"
    prefetch_preload            = "on"
    security_header {
      enabled            = false
    }
    ssl                         = "full"
    tls_1_3                     = "zrt"
    true_client_ip_header       = "on"
    websockets                  = "on"
    zero_rtt                    = "on"
    min_tls_version             = "1.2"
    polish            = "lossless"
    webp              = "on"
  }
}