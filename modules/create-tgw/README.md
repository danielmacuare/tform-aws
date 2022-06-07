<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.16.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amazon_side_asn"></a> [amazon\_side\_asn](#input\_amazon\_side\_asn) | Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs. | `number` | n/a | yes |
| <a name="input_auto_accept_shared_attachments"></a> [auto\_accept\_shared\_attachments](#input\_auto\_accept\_shared\_attachments) | (Optional) Whether resource attachment requests are automatically accepted. Valid values: disable, enable | `string` | `"disable"` | no |
| <a name="input_aws_region_short"></a> [aws\_region\_short](#input\_aws\_region\_short) | (Shorter Version) Target Region to deploy the resources. ie. use1, use2, euw2, etc | `string` | n/a | yes |
| <a name="input_default_route_table_association"></a> [default\_route\_table\_association](#input\_default\_route\_table\_association) | Whether resource attachments are automatically associated with the default association route table. Valid values: disable, enable. | `string` | `"disable"` | no |
| <a name="input_default_route_table_propagation"></a> [default\_route\_table\_propagation](#input\_default\_route\_table\_propagation) | Whether resource attachments are automatically propagate routes to the default propagation route table. Valid values: disable, enable. | `string` | `"disable"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | Default variales for all AWS resources | `map(string)` | `null` | no |
| <a name="input_dns_support"></a> [dns\_support](#input\_dns\_support) | Whether DNS support is enabled. Valid values: disable, enable | `string` | `"enable"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Target environment to deploy the resources. i.e prod, dev, stage, etc | `string` | n/a | yes |
| <a name="input_transit_gateway_cidr_blocks"></a> [transit\_gateway\_cidr\_blocks](#input\_transit\_gateway\_cidr\_blocks) | The list of associated CIDR blocks. It can contain up to 1 IPv4 CIDR block of size up to /24 and up to one IPv6 CIDR block of size up to /64. The IPv4 block must not be from range 169.254.0.0/16. | `list(string)` | `null` | no |
| <a name="input_vpn_ecmp_support"></a> [vpn\_ecmp\_support](#input\_vpn\_ecmp\_support) | The list of associated CIDR blocks. It can contain up to 1 IPv4 CIDR block of size up to /24 and up to one IPv6 CIDR block of size up to /64. The IPv4 block must not be from range 169.254.0.0/16. | `string` | `"enable"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_tgw_id"></a> [tgw\_id](#output\_tgw\_id) | The Transit Gateway ID |
<!-- END_TF_DOCS -->