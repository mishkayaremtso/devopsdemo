resource "google_compute_instance" "master" {
  name         = "master"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["all"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  // Local SSD disk


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }


}
resource "google_compute_instance" "slave01" {
  name         = "slave01"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["all"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  // Local SSD disk


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }


}
resource "google_compute_instance" "grfprom" {
  name         = "grfprom"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["all"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  // Local SSD disk


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }


}
