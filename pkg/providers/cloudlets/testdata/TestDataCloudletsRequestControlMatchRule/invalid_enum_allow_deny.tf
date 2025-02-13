# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_cloudlets_request_control_match_rule" "test" {
  match_rules {
    allow_deny = "invalid_value"
    matches {
      match_type     = "clientip"
      match_operator = "equals"
      check_ips      = "CONNECTING_IP"
      object_match_value {
        type  = "simple"
        value = ["a"]
      }
    }
  }
}