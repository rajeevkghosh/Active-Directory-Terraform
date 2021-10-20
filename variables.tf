variable "domain_name" {
  type = string
}

variable "project" {
  type = string
}
variable "locations" {

  description = "locations"
  type        = set(string)
  default     = []
}

variable "reserved_ip_range" {

  description = "reserved IP range"
  type        = string
}

variable "authorized_networks" {

  description = "List of authorized Networks"
  type        = set(string)
  default     = []
}

variable "target_domain_name" {
  type = string

}
variable "target_dns_ip_addresses" {

  description = "Target DNS IP addresses"
  type        = set(string)
  default     = []
}

variable "trust_handshake_secret" {

  description = "Trust Handshake Secret"
  type        = string
  sensitive   = true

}