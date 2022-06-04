# Required
variable "default_tags" {
  type        = map(string)
  description = "Default variales for all AWS resources"
  default     = null
}

variable "aws_region_short" {
  type        = string
  description = "(Shorter Version) Target Region to deploy the resources. ie. use1, use2, euw2, etc"
}

variable "environment" {
  type        = string
  description = "Target environment to deploy the resources. i.e prod, dev, stage, etc"
}

variable "amazon_side_asn" {
  type        = number
  description = "Private Autonomous System Number (ASN) for the Amazon side of a BGP session. The range is 64512 to 65534 for 16-bit ASNs and 4200000000 to 4294967294 for 32-bit ASNs."
}

# Optionals
variable "auto_accept_shared_attachments" {
  type        = string
  description = "(Optional) Whether resource attachment requests are automatically accepted. Valid values: disable, enable"
  default     = "disable"
}

variable "default_route_table_association" {
  type        = string
  description = "Whether resource attachments are automatically associated with the default association route table. Valid values: disable, enable."
  default     = "disable"
}

variable "default_route_table_propagation" {
  type        = string
  description = "Whether resource attachments are automatically propagate routes to the default propagation route table. Valid values: disable, enable."
  default     = "disable"
}

variable "dns_support" {
  type        = string
  description = "Whether DNS support is enabled. Valid values: disable, enable"
  default     = "enable"
}

variable "transit_gateway_cidr_blocks" {
  type        = list(string)
  description = "The list of associated CIDR blocks. It can contain up to 1 IPv4 CIDR block of size up to /24 and up to one IPv6 CIDR block of size up to /64. The IPv4 block must not be from range 169.254.0.0/16."
  default     = null
}

variable "vpn_ecmp_support" {
  type        = string
  description = "The list of associated CIDR blocks. It can contain up to 1 IPv4 CIDR block of size up to /24 and up to one IPv6 CIDR block of size up to /64. The IPv4 block must not be from range 169.254.0.0/16."
  default     = "enable"
}