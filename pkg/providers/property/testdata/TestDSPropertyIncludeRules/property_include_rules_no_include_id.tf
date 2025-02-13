# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_property_include_rules" "test" {
  contract_id = "ctr_1"
  group_id    = "grp_2"
  version     = 1
  name        = "TestIncludeName"
  type        = "MICROSERVICES"
  rule_format = "v2022-06-28"
}
