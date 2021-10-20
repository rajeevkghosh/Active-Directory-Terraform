provider "google" {
  #credentials = file("../key.json")

}

resource "google_active_directory_domain" "ad-domain" {
  project             = var.project
  domain_name         = var.domain_name
  locations           = var.locations
  reserved_ip_range   = var.reserved_ip_range
  authorized_networks = var.authorized_networks
}

resource "google_active_directory_domain_trust" "ad-domain-trust" {
  project                 = var.project
  domain                  = var.domain_name
  target_domain_name      = var.target_domain_name
  target_dns_ip_addresses = var.target_dns_ip_addresses
  trust_direction         = "OUTBOUND"
  trust_type              = "FOREST"
  trust_handshake_secret  = var.trust_handshake_secret
}
