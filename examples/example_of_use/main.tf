module "digitalocean_droplet" {
  source = "github.com/opsd-io/terraform-module-digitalocean-droplet?ref=MB_droplet_creation"
  image  = "ubuntu-20-04-x64"
  name   = "web-1"
  region = "nyc1"
  size   = "s-1vcpu-1gb"
}

module "digitalocean_loadbalancer" {
  source = "github.com/opsd-io/terraform-module-digitalocean-load-balancer?ref=load_balancer_module"
  name                             = var.name
  region                           = var.region
  size                             = var.size
  size_unit                        = var.size_unit
  vpc_uuid                         = var.vpc_uuid
  droplet_ids                      = var.droplet_ids
  droplet_tag                      = var.droplet_tag
}

# resource "digitalocean_droplet" "web" {
#   name   = "web-1"
#   size   = "s-1vcpu-1gb"
#   image  = "ubuntu-18-04-x64"
#   region = "nyc3"
# }

# resource "digitalocean_loadbalancer" "public" {
#   name   = "loadbalancer-1"
#   region = "nyc3"

#   forwarding_rule {
#     entry_port     = 80
#     entry_protocol = "http"

#     target_port     = 80
#     target_protocol = "http"
#   }

#   healthcheck {
#     port     = 22
#     protocol = "tcp"
#   }

#   droplet_ids = [digitalocean_droplet.web.id]
# }