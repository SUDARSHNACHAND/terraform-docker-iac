terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

# Configure the Docker Provider
provider "docker" {
  host = var.docker_host
}

# Pull the Docker image
resource "docker_image" "nginx" {
  name         = var.image_name
  keep_locally = false
}

# Provision the Docker container
resource "docker_container" "nginx_container" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  ports {
    internal = var.internal_port
    external = var.external_port
    ip       = "0.0.0.0"
  }
}
