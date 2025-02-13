# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_property" "test" {
  name        = "dummy_name2"
  contract_id = "ctr_1"
  group_id    = "grp_222"
  product_id  = "prd_3"

  hostnames {
    cname_to               = "to.test.domain"
    cname_from             = "from.test.domain"
    cert_provisioning_type = "DEFAULT"
  }
}
