locations = [
  "northamerica-northeast1"
]

authorized_networks = [
  "custom-vpc-1", 
  "custom-vpc-2",
  "custom-vpc-3"
]

domain_name        = "dev.emergence."
target_domain_name = "example-gcp.com"
project            = "th-sharedservices-devqa"

target_dns_ip_addresses = [
  "10.31.29.138"
]

trust_handshake_secret = "Testing1!"
reserved_ip_range = "10.75.1.0/24"
