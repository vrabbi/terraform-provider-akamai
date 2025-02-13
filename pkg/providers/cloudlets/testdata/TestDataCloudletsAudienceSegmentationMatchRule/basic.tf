# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

data "akamai_cloudlets_audience_segmentation_match_rule" "test" {
  match_rules {
    name     = "basic_rule"
    disabled = true
    forward_settings {
      origin_id = "1"
    }
  }
}