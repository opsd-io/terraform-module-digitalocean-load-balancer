provider "digitalocean" {
  token = var.do_token
}

module "terraform_module_digitalocean_vpc" {
  source      = "github.com/opsd-io/terraform-module-digitalocean-vpc?ref=MB_vpc"
  vpc_name    = "your-vpc"
  region      = "nyc1"
  description = "VPC added by terraform module"
}


module "digitalocean_droplet" {
  source   = "github.com/opsd-io/terraform-module-digitalocean-droplet?ref=MB_droplet_creation"
  image    = "ubuntu-20-04-x64"
  name     = "web-1"
  region   = "nyc1"
  size     = "s-1vcpu-1gb"
  vpc_uuid = [module.terraform_module_digitalocean_vpc.id]
}

module "digitalocean_loadbalancer" {
  source      = "github.com/opsd-io/terraform-module-digitalocean-load-balancer?ref=load_balancer_module"
  name        = "loadbalancer-1"
  region      = "nyc1"
  droplet_ids = [module.digitalocean_droplet.id]
  vpc_uuid    = [module.digitalocean_vpc.id]

  forwarding_rule = [
    {
      entry_port     = 80
      entry_protocol = "http"

      target_port     = 80
      target_protocol = "http"
    }
  ]
}
