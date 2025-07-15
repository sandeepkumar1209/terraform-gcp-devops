resource "google_compute_instance" "myapp1" {
  name         = var.vminstance_name
  machine_type = var.machine_type
  zone         = var.zone

  tags = var.firewall_tags

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size = 10
    }
  }

  metadata_startup_script = file("${path.module}/app1-webserver-install.sh")
  network_interface {
    subnetwork = var.subnetwork
    access_config {
      
    }
  }
}