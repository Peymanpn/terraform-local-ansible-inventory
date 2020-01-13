variable "servers" {
  type = map
  default = {}
  description = "A map of inventory group names to IP addresses."
}

variable "secrets" {
  type = map
  default = {}
  description = "A map of secret key value pairs to be injected as Docker secrets."
}

variable "hostname" {
  type = string
  default = ""
  description = "A fully qualified domain name that will be passed to the Docker Swarm as the env var HOST."
}

variable "output" {
  type = string
  description = "The path to use when saving the rendered inventory file."
}
