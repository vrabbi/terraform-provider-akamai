# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_botman_conditional_action" "test" {
  config_id = 43253
  conditional_action = jsonencode(
    {
      "testKey" : "updated_testValue3"
    }
  )
}