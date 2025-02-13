# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc = "../../common/testutils/edgerc"
}

resource "akamai_imaging_policy_image" "policy" {
  policy_id              = ".auto"
  contract_id            = "test_contract"
  policyset_id           = "test_policy_set"
  activate_on_production = true
  json = jsonencode({
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
    },
    "transformations" : [
      {
        "colors" : 2,
        "transformation" : "MaxColors"
      }
    ]
  })
}