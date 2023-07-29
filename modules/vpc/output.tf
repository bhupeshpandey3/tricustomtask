output "vpc" {
    value = google_compute_network.vpc
  
}

output "pvtsub" {
    value = google_compute_subnetwork.private_subnet
  
}

