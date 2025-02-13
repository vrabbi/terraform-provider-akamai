# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_edge_hostname" "importedgehostname" {
  contract_id   = "ctr_1"
  group_id      = "grp_2"
  product_id    = "prd_2"
  edge_hostname = "test.edgekey.net"
  ip_behavior   = "IPV4"
  certificate   = 123456
}
