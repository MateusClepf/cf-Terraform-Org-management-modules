variable "cloudflare_account_tag" {
  type = string
}


variable "internal_ip_range" {
  default = [
    "200.5.67.0/24",
    "12.45.67.34"
  ]
}

variable "bad_ips" {
  default = [
    "45.65.34.2",
    "123.45.65.0/23"
  ]
}
