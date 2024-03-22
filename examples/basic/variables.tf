variable "do_token" {
  description = "Token to digitalOcean API"
  type        = string
}

variable "droplet_ids" {
  description = "A list of the IDs of each droplet to be attached to the Load Balancer."
  type        = list(string)
  default     = []
}
