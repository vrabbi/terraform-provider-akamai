# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_cloudlets_application_load_balancer_match_rule" "test" {
  match_rules {
    name = "rule2"
    id   = 12333
    forward_settings {
      origin_id = "1234"
    }
  }
  match_rules {
    name      = "rule1"
    start     = 10
    end       = 10000
    match_url = "example.com"
    matches {
      match_type     = "clientip"
      match_operator = "equals"
      object_match_value {
        type  = "simple"
        value = ["fghi"]
      }
    }
    forward_settings {
      origin_id = "33"
    }
    disabled = false
  }
}