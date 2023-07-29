resource "google_compute_instance" "tricustomvm1" {
  name = "webserver"
  machine_type = var.machine
  zone = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "gkemastercustom"
    }
  }
  network_interface {
    subnetwork = var.private_subnet
  
    }
}