provider "docker" {}

resource "docker_container" "mtdan" {
  name  = "mtdan"
  image = "${docker_image.mtdan.latest}"
  restart = "always"
  ports {
    internal = "8080"
    external = "8080"
  }
}

resource "docker_image" "mtdan" {
  name = "mtdan_web:latest"
}
