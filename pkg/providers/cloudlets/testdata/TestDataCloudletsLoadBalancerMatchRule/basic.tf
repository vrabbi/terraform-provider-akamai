# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_cloudlets_application_load_balancer_match_rule" "test" {
  match_rules {
    name = "rule1"
    forward_settings {
      origin_id = "3"
    }
    disabled = true
  }
}