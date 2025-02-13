# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_property_activation" "test" {
  property_id                    = "test"
  contact                        = ["user@example.com"]
  version                        = 1
  auto_acknowledge_rule_warnings = true
  note                           = "property activation note for creating"
  timeouts {
    default = "2"
  }
}