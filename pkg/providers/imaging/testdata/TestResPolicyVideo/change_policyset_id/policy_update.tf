# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_imaging_policy_video" "policy" {
  policy_id    = "test_policy"
  contract_id  = "test_contract"
  policyset_id = "test_policy_set_update"
  json = jsonencode(
    {
      "breakpoints" : {
        "widths" : [
          320,
          640,
          1024,
          2048,
          5000
        ]
      },
      "output" : {
        "perceptualQuality" : "mediumHigh"
      }
  })
}