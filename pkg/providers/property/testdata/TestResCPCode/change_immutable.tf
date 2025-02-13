# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_cp_code" "test" {
  name        = "renamed cpcode"
  contract_id = "ctr_2"
  group_id    = "grp_2"
  product_id  = "prd_2"
}
