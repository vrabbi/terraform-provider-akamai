# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_cloudlets_request_control_match_rule" "test" {
  match_rules {
    allow_deny = "allow"
    matches {
      match_type     = "clientip"
      match_operator = "equals"
      object_match_value {
        type  = "incorrect_type"
        value = ["a"]
      }
    }
  }
}