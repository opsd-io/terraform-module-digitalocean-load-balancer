<picture>
  <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-dark-mode.svg">
  <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/opsd-io/terraform-module-template/main/.github/img/opsd-github-repo-light-mode.svg">
  <img alt="OPSd - the unique and effortless way of managing cloud infrastructure." src="https://raw.githubusercontent.com/opsd-io/terraform-module-template/update-tools/.github/img/opsd-github-repo-light-mode.svg" width="400">
</picture>

Meet **OPSd**. The unique and effortless way of managing cloud infrastructure.

# terraform-module-template

## Introduction

What does the module provide?

## Usage

```hcl
module "module_name" {
  source  = "github.com/opsd-io/module_name?ref=v0.0.1"

  # Variables
  variable_1 = "foo"
  variable_2 = "bar"
}
```

**IMPORTANT**: Make sure not to pin to master because there may be breaking changes between releases.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.7 |
| <a name="requirement_digitalocean"></a> [digitalocean](#requirement\_digitalocean) | >= 2.34.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_digitalocean"></a> [digitalocean](#provider\_digitalocean) | >= 2.34.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [digitalocean_loadbalancer.main](https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/loadbalancer) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_droplet_ids"></a> [droplet\_ids](#input\_droplet\_ids) | A list of the IDs of each droplet to be attached to the Load Balancer. | `list(string)` | `[]` | no |
| <a name="input_droplet_tag"></a> [droplet\_tag](#input\_droplet\_tag) | The name of a Droplet tag corresponding to Droplets to be assigned to the Load Balancer. | `string` | `null` | no |
| <a name="input_firewall"></a> [firewall](#input\_firewall) | List of objects that represent the configuration of each healthcheck. | `list(any)` | `[]` | no |
| <a name="input_forwarding_rule"></a> [forwarding\_rule](#input\_forwarding\_rule) | List of objects for forwarding\_rule. | `list(any)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | The Load Balancer name | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region to start in | `string` | n/a | yes |
| <a name="input_size"></a> [size](#input\_size) | The size of the Load Balancer. It must be either lb-small, lb-medium, or lb-large. Defaults to lb-small. Only one of size or size\_unit may be provided. | `string` | `"lb-small"` | no |
| <a name="input_size_unit"></a> [size\_unit](#input\_size\_unit) | The size of the Load Balancer. It must be in the range (1, 100). Defaults to 1. Only one of size or size\_unit may be provided. | `number` | `1` | no |
| <a name="input_vpc_uuid"></a> [vpc\_uuid](#input\_vpc\_uuid) | The ID of the VPC where the load balancer will be located. | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the Load Balancer. |
| <a name="output_ip"></a> [ip](#output\_ip) | The ip of the Load Balancer. |
| <a name="output_urn"></a> [urn](#output\_urn) | The urn for the Load Balancer. |
<!-- END_TF_DOCS -->

## Examples of usage

Do you want to see how the module works? See all the [usage examples](examples).

## Related modules

The list of related modules (if present).

## Contributing

If you are interested in contributing to the project, see see our [guide](https://github.com/opsd-io/contribution).

## Support

If you have a problem with the module or want to propose a new feature, you can report it via the project's (Github) issue tracker.

If you want to discuss something in person, you can join our community on [Slack](https://join.slack.com/t/opsd-community/signup).

## License

[Apache License 2.0](LICENSE)
