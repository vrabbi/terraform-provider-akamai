# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_property_include" "test" {
  contract_id = "ctr_123"
  group_id    = "grp_123"
  name        = "test_include"
  type        = "MICROSERVICES"
  rule_format = "v2022-06-28"
  rules       = "{}"
}