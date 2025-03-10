resource "cloudflare_list" "internal_ip_range" {
  count       = var.internal_ip_range ? 1 : 0
  account_id  = var.cloudflare_account_tag
  name        = "ikea_internal_ip_range_list"
  description = "List of IP addresses whitelisted IKEA internal IP ranges"
  kind        = "ip"

  dynamic item {
    for_each = var.internal_ip_range
    content {
      value {
        ip = item.value
      }
    }
  }
}

resource "cloudflare_list" "bad_ips" {
  count       = var.bad_ips ? 1 : 0
  account_id  = var.cloudflare_account_tag
  name        = "ikea_store_cidr_list"
  description = "List of IP addresses store cidrs"
  kind        = "ip"

  dynamic item {
    for_each = var.bad_ips
    content {
      value {
        ip = item.value
      }
    }
  }
}

/*

resource "cloudflare_list" "example" {
  account_id  = "f037e56e89293a057740de681ac9abbe"
  name        = "example_list"
  description = "example IPs for a list"
  kind        = "ip"

  item {
    value {
      ip = "192.0.2.0"
    }
    comment = "one"
  }

  item {
    value {
      ip = "192.0.2.1"
    }
    comment = "two"
  }
}*/