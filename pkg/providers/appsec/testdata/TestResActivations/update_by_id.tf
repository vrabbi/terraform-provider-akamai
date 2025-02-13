# Copyright (c) HashiCorp, Inc.

provider "akamai" {
  edgerc        = "../../common/testutils/edgerc"
  cache_enabled = false
}

resource "akamai_appsec_activations" "test" {
  config_id           = 43253
  version             = 7
  network             = "PRODUCTION"
  note                = "Test Notes update"
  notification_emails = ["user@example.com"]
}

