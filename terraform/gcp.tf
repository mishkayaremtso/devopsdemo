
resource "google_compute_instance" "default" {
  name         = "slave1"
  machine_type = "n1-standard-1"
  zone         = "us-west1-b"
  tags         = ["http-server"]
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20200317"
    }
  }



  network_interface {
    network = "default"
    access_config {}

  }
  metadata_startup_script = "sudo apt update && sudo apt install -y openjdk-8-jre && sudo ufw allow 8080 && sudo ufw allow ssh && sudo ufw allow http && sudo ufw enable "
}
resource "google_compute_instance" "default1" {
  name         = "master"
  machine_type = "n1-standard-1"
  zone         = "us-west1-b"
  tags         = ["http-server"]
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20200317"
    }
  }


  metadata_startup_script = "sudo apt update && sudo apt install -y openjdk-8-jre && sudo ufw allow 8080 && sudo ufw allow ssh && sudo ufw allow http && sudo ufw enable && sudo apt install -y docker.io && sudo docker pull jenkins/jenkins && sudo docker run -p 8080:8080 --name=jenkins-master -d jenkins/jenkins"

  network_interface {
    network = "default"
    access_config {}

  }


}
resource "google_compute_instance" "default2" {
  name         = "jenkins-prod"
  machine_type = "n1-standard-1"
  zone         = "us-west1-b"
  tags         = ["http-server"]
  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20200317"
    }
  }



  network_interface {
    network = "default"
    access_config {}


  }

  metadata_startup_script = "sudo apt update && sudo apt install -y openjdk-8-jre && sudo ufw allow 8080 && sudo ufw allow ssh && sudo ufw allow http && sudo ufw enable && sudo apt install -y docker.io  "
}
