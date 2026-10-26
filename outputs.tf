output "container_id" {
  description = "The unique ID of the created Docker container"
  value       = docker_container.nginx_container.id
}

output "container_name" {
  description = "The name of the created Docker container"
  value       = docker_container.nginx_container.name
}

output "image_id" {
  description = "The image ID used by the container"
  value       = docker_image.nginx.image_id
}

output "external_port" {
  description = "The host port forwarded to container port 80"
  value       = var.external_port
}

output "container_url" {
  description = "Access URL for the provisioned web server"
  value       = "http://localhost:${var.external_port}"
}
