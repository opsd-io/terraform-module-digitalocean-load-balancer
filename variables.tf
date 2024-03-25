variable "name" {
  description = "The Load Balancer name"
  type        = string
}

variable "region" {
  description = "The region to start in"
  type        = string
}

variable "size" {
  description = "The size of the Load Balancer. It must be either lb-small, lb-medium, or lb-large. Defaults to lb-small. Only one of size or size_unit may be provided."
  type        = string
  default     = "lb-small"
}

variable "size_unit" {
  description = "The size of the Load Balancer. It must be in the range (1, 100). Defaults to 1. Only one of size or size_unit may be provided."
  type        = number
  default     = 1
}

variable "vpc_uuid" {
  description = "The ID of the VPC where the load balancer will be located."
  type        = string
  default     = ""
}

variable "forwarding_rule" {
  description = "List of objects for forwarding_rule."
  type        = list(any)
  default     = []
}

variable "droplet_ids" {
  description = "A list of the IDs of each droplet to be attached to the Load Balancer."
  type        = list(string)
  default     = []
}

variable "droplet_tag" {
  description = "The name of a Droplet tag corresponding to Droplets to be assigned to the Load Balancer."
  type        = string
  default     = null
}

variable "firewall" {
  description = "List of objects that represent the configuration of each healthcheck."
  type        = list(any)
  default     = []
}
