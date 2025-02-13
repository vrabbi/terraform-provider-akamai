# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}


resource "akamai_property_bootstrap" "test" {
  name        = "property_name"
  group_id    = "1"
  contract_id = "2"
  product_id  = "3"
}