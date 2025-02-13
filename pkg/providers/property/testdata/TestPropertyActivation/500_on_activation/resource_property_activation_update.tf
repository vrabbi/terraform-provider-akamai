# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_property_activation" "test" {
  property_id                    = "prp_test"
  network                        = "STAGING"
  contact                        = ["user@example.com"]
  version                        = 2
  auto_acknowledge_rule_warnings = true
}