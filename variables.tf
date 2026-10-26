variable "docker_host" {
  description = "Docker daemon connection string (named pipe for Windows Docker Desktop, or unix socket for Linux/macOS)"
  type        = string
  default     = "npipe:////./pipe/dockerDesktopLinuxEngine"
}

variable "image_name" {
  description = "Docker image name and tag to pull and run"
  type        = string
  default     = "nginx:alpine"
}

variable "container_name" {
  description = "Name for the provisioned Docker container"
  type        = string
  default     = "terraform-docker-nginx"
}

variable "internal_port" {
  description = "Internal container port exposed by the image"
  type        = number
  default     = 80
}

variable "external_port" {
  description = "Host port mapped to the container internal port"
  type        = number
  default     = 8000
}
