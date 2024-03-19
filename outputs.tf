output "id" {
  description = "The ID of the Load Balancer."
  value       = digitalocean_loadbalancer.main.id
}

output "ip" {
  description = "The ip of the Load Balancer."
  value       = digitalocean_loadbalancer.main.ip
}

output "urn" {
  description = "The urn for the Load Balancer."
  value       = digitalocean_loadbalancer.main.urn
}