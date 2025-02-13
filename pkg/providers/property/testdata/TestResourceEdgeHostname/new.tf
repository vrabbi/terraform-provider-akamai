# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_edge_hostname" "edgehostname" {
  contract_id   = "ctr_2"
  group_id      = "grp_2"
  product_id    = "prd_2"
  edge_hostname = "test.aka"
  ip_behavior   = "IPV4"
  use_cases     = <<-EOF
  [
  {
    "option": "BACKGROUND",
    "type": "GLOBAL",
    "useCase": "Download_Mode"
  }
  ]
  EOF
}

output "edge_hostname" {
  value = akamai_edge_hostname.edgehostname.edge_hostname
}
