# main.tf
resource "cloudflare_bot_management" "this" {
  zone_id                = var.zone_id
  ai_bots_protection     = "disabled"
  auto_update_model      = true
  enable_js              = true
  suppress_session_score = false
}