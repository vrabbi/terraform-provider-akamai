# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_edge_hostname" "edgehostname" {
  contract_id   = "ctr_2"
  group_id      = "grp_2"
  product_id    = "prd_9"
  edge_hostname = "test.akamaized.net"
  ip_behavior   = "IPV6_COMPLIANCE"
}

output "edge_hostname" {
  value = akamai_edge_hostname.edgehostname.edge_hostname
}