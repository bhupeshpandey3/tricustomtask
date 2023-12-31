resource "google_compute_network" "vpc" {
  name = var.newnamevpc
}

resource "google_compute_subnetwork" "private_subnet" {
  name = "sub-pri"
  region = var.region
  network = google_compute_network.vpc.id
  ip_cidr_range = "10.0.0.0/16"
}
resource "google_compute_global_address" "private_ip_block" {
  name         = "private-ip-block"
  purpose      = "VPC_PEERING"
  address_type = "INTERNAL"
  ip_version   = "IPV4"
  prefix_length = 20
  network       = google_compute_network.vpc.self_link
}
resource "google_service_networking_connection" "private_vpc_connection" {
  network                 = google_compute_network.vpc.self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.private_ip_block.name]
}

#Firewall rule
resource "google_compute_firewall" "default" {
  name = "default"
  network = google_compute_network.vpc.name
  allow {
    protocol = "tcp"
    ports = ["80","5432","3306"]
  }
    source_ranges = ["10.0.0.0/16"]
  }

resource "google_compute_address" "ip_address" {
  name         = "private-ip"
  address_type = "INTERNAL"
  address      = "10.0.42.42"
  subnetwork   = google_compute_subnetwork.private_subnet.id
}
resource "google_compute_router" "nat_router" {
  name    = "nat-router"
  region  = "us-central1"
  network = google_compute_network.vpc.self_link
}

resource "google_compute_router_nat" "nat_config" {
  name                   = "nat-config"
  router                 = google_compute_router.nat_router.name
  region                 = "us-central1"
  nat_ip_allocate_option = "AUTO_ONLY"
   source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}