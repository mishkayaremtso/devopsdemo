
resource "google_compute_instance" "default" {
  name         = "test1"
  machine_type = "n1-standard-1"
  zone         = "us-west1-b"
  tags         = ["ssh", "http", "all", "http-server"]
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20200317"
    }
  }

  metadata = {
    ssh-keys = "mykle1488:${file("~/.ssh/id_rsa.pub")}"
  }


  network_interface {
    network = "default"
    access_config {}

  }

}
resource "google_compute_instance" "default1" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-west1-b"
  tags         = ["ssh", "http", "all", "http-server"]
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20200317"
    }
  }

  metadata = {
    ssh-keys = "mykle1488:${file("~/.ssh/id_rsa.pub")}"
  }


  network_interface {
    network = "default"
    access_config {}

  }

}
