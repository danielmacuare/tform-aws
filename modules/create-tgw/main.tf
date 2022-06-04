# Test
resource "aws_ec2_transit_gateway" "this" {
  amazon_side_asn                 = var.amazon_side_asn
  auto_accept_shared_attachments  = var.auto_accept_shared_attachments
  default_route_table_association = var.default_route_table_association
  default_route_table_propagation = var.default_route_table_propagation
  description                     = "tgw-description-${var.aws_region_short}"
  dns_support                     = var.dns_support
  transit_gateway_cidr_blocks     = var.transit_gateway_cidr_blocks
  vpn_ecmp_support                = var.vpn_ecmp_support
  tags = merge(
    var.default_tags,
    {
      Name = "tgw-${var.environment}-${var.aws_region_short}"
  })
}