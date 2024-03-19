resource "digitalocean_loadbalancer" "main" {
  name        = var.name
  region      = var.region
  size        = var.size
  size_unit   = var.size_unit
  vpc_uuid    = var.vpc_uuid
  droplet_ids = var.droplet_ids
  droplet_tag = var.droplet_tag

  dynamic "forwarding_rule" {
    for_each = var.forwarding_rule
    content {
      entry_port      = forwarding_rule.value.entry_port
      entry_protocol  = forwarding_rule.value.entry_protocol
      target_port     = forwarding_rule.value.target_port
      target_protocol = forwarding_rule.value.target_protocol
    }
  }

  dynamic "firewall" {
    for_each = var.firewall
    content {
      deny  = lookup(firewall.value, "deny", null)
      allow = lookup(firewall.value, "allow", null)
    }
  }
}
