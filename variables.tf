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

variable "output" {
  type = string
  description = "The path to use when saving the rendered inventory file."
}
