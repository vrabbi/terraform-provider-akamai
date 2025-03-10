# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_property" "test" {
  name        = "test_property"
  group_id    = "grp_2"
  contract_id = "ctr_1"
  product_id  = "prd_3"

  rules = "abc"
}
